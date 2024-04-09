return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require('neo-tree').setup {
		    filesystem = {
			follow_current_file = true, -- Enable following the current file
		    },
		}
		vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
		vim.keymap.set("n", "<leader>e", ":Neotree toggle left<CR>", {silent = true, noremap = true})
		vim.keymap.set('n', '<leader>bd', ':bd<CR>', {noremap = true, silent = true, desc = "Close current buffer"})
		vim.keymap.set('n', '<leader>bo', ':%bd|e#|bd#<CR>', {noremap = true, silent = true, desc = "Close all other buffers"})
	end,
}
