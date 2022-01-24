#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct mlx5_flow_table {int level; int op_mod; int type; int max_fte; int /*<<< orphan*/  lock; int /*<<< orphan*/  fwd_rules; int /*<<< orphan*/  flags; int /*<<< orphan*/  vport; TYPE_1__ node; int /*<<< orphan*/  fgs_hash; } ;
typedef  enum fs_flow_table_type { ____Placeholder_fs_flow_table_type } fs_flow_table_type ;
typedef  enum fs_flow_table_op_mod { ____Placeholder_fs_flow_table_op_mod } fs_flow_table_op_mod ;

/* Variables and functions */
 int ENOMEM ; 
 struct mlx5_flow_table* FUNC0 (int) ; 
 int /*<<< orphan*/  FS_TYPE_FLOW_TABLE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_flow_table*) ; 
 struct mlx5_flow_table* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rhash_fg ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mlx5_flow_table *FUNC6(int level, u16 vport, int max_fte,
						enum fs_flow_table_type table_type,
						enum fs_flow_table_op_mod op_mod,
						u32 flags)
{
	struct mlx5_flow_table *ft;
	int ret;

	ft  = FUNC3(sizeof(*ft), GFP_KERNEL);
	if (!ft)
		return FUNC0(-ENOMEM);

	ret = FUNC5(&ft->fgs_hash, &rhash_fg);
	if (ret) {
		FUNC2(ft);
		return FUNC0(ret);
	}

	ft->level = level;
	ft->node.type = FS_TYPE_FLOW_TABLE;
	ft->op_mod = op_mod;
	ft->type = table_type;
	ft->vport = vport;
	ft->max_fte = max_fte;
	ft->flags = flags;
	FUNC1(&ft->fwd_rules);
	FUNC4(&ft->lock);

	return ft;
}