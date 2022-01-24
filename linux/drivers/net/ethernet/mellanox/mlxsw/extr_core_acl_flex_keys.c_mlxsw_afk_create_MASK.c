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
struct mlxsw_afk_ops {int /*<<< orphan*/  blocks_count; int /*<<< orphan*/  blocks; } ;
struct mlxsw_afk {unsigned int max_blocks; int /*<<< orphan*/  blocks_count; int /*<<< orphan*/  blocks; struct mlxsw_afk_ops const* ops; int /*<<< orphan*/  key_info_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct mlxsw_afk* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_afk*) ; 

struct mlxsw_afk *FUNC4(unsigned int max_blocks,
				   const struct mlxsw_afk_ops *ops)
{
	struct mlxsw_afk *mlxsw_afk;

	mlxsw_afk = FUNC2(sizeof(*mlxsw_afk), GFP_KERNEL);
	if (!mlxsw_afk)
		return NULL;
	FUNC0(&mlxsw_afk->key_info_list);
	mlxsw_afk->max_blocks = max_blocks;
	mlxsw_afk->ops = ops;
	mlxsw_afk->blocks = ops->blocks;
	mlxsw_afk->blocks_count = ops->blocks_count;
	FUNC1(!FUNC3(mlxsw_afk));
	return mlxsw_afk;
}