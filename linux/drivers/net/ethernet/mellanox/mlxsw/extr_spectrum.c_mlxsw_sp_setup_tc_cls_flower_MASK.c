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
struct mlxsw_sp_acl_block {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
struct flow_cls_offload {int command; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  FLOW_CLS_DESTROY 132 
#define  FLOW_CLS_REPLACE 131 
#define  FLOW_CLS_STATS 130 
#define  FLOW_CLS_TMPLT_CREATE 129 
#define  FLOW_CLS_TMPLT_DESTROY 128 
 struct mlxsw_sp* FUNC0 (struct mlxsw_sp_acl_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*,struct mlxsw_sp_acl_block*,struct flow_cls_offload*) ; 
 int FUNC2 (struct mlxsw_sp*,struct mlxsw_sp_acl_block*,struct flow_cls_offload*) ; 
 int FUNC3 (struct mlxsw_sp*,struct mlxsw_sp_acl_block*,struct flow_cls_offload*) ; 
 int FUNC4 (struct mlxsw_sp*,struct mlxsw_sp_acl_block*,struct flow_cls_offload*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp*,struct mlxsw_sp_acl_block*,struct flow_cls_offload*) ; 

__attribute__((used)) static int
FUNC6(struct mlxsw_sp_acl_block *acl_block,
			     struct flow_cls_offload *f)
{
	struct mlxsw_sp *mlxsw_sp = FUNC0(acl_block);

	switch (f->command) {
	case FLOW_CLS_REPLACE:
		return FUNC2(mlxsw_sp, acl_block, f);
	case FLOW_CLS_DESTROY:
		FUNC1(mlxsw_sp, acl_block, f);
		return 0;
	case FLOW_CLS_STATS:
		return FUNC3(mlxsw_sp, acl_block, f);
	case FLOW_CLS_TMPLT_CREATE:
		return FUNC4(mlxsw_sp, acl_block, f);
	case FLOW_CLS_TMPLT_DESTROY:
		FUNC5(mlxsw_sp, acl_block, f);
		return 0;
	default:
		return -EOPNOTSUPP;
	}
}