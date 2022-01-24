#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct mlxsw_sp2_afk_block_layout {int offset; int /*<<< orphan*/  item; } ;

/* Variables and functions */
 int FUNC0 (struct mlxsw_sp2_afk_block_layout*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlxsw_sp2_afk_block_layout* mlxsw_sp2_afk_blocks_layout ; 

__attribute__((used)) static void FUNC3(char *output, int block_index,
					    u64 block_value)
{
	const struct mlxsw_sp2_afk_block_layout *block_layout;

	if (FUNC1(block_index < 0 ||
		    block_index >= FUNC0(mlxsw_sp2_afk_blocks_layout)))
		return;

	block_layout = &mlxsw_sp2_afk_blocks_layout[block_index];
	FUNC2(output + block_layout->offset,
			   &block_layout->item, 0, block_value);
}