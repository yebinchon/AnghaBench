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
struct mlxsw_sp_port {int dummy; } ;
struct flow_block_offload {scalar_t__ binder_type; int command; int /*<<< orphan*/  block; int /*<<< orphan*/ * driver_block_list; } ;
struct flow_block_cb {int /*<<< orphan*/  driver_list; } ;
typedef  int /*<<< orphan*/  flow_setup_cb_t ;

/* Variables and functions */
 int EBUSY ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
#define  FLOW_BLOCK_BIND 129 
 scalar_t__ FLOW_BLOCK_BINDER_TYPE_CLSACT_EGRESS ; 
 scalar_t__ FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS ; 
#define  FLOW_BLOCK_UNBIND 128 
 int /*<<< orphan*/  FUNC0 (struct flow_block_cb*) ; 
 int FUNC1 (struct flow_block_cb*) ; 
 int /*<<< orphan*/  FUNC2 (struct flow_block_cb*,struct flow_block_offload*) ; 
 struct flow_block_cb* FUNC3 (int /*<<< orphan*/ *,struct mlxsw_sp_port*,struct mlxsw_sp_port*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct flow_block_cb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct mlxsw_sp_port*,int /*<<< orphan*/ *) ; 
 struct flow_block_cb* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mlxsw_sp_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct flow_block_cb*,struct flow_block_offload*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mlxsw_sp_block_cb_list ; 
 int /*<<< orphan*/ * mlxsw_sp_setup_tc_block_cb_matchall_eg ; 
 int /*<<< orphan*/ * mlxsw_sp_setup_tc_block_cb_matchall_ig ; 
 int FUNC10 (struct mlxsw_sp_port*,struct flow_block_offload*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mlxsw_sp_port*,struct flow_block_offload*,int) ; 

__attribute__((used)) static int FUNC12(struct mlxsw_sp_port *mlxsw_sp_port,
				   struct flow_block_offload *f)
{
	struct flow_block_cb *block_cb;
	flow_setup_cb_t *cb;
	bool ingress;
	int err;

	if (f->binder_type == FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS) {
		cb = mlxsw_sp_setup_tc_block_cb_matchall_ig;
		ingress = true;
	} else if (f->binder_type == FLOW_BLOCK_BINDER_TYPE_CLSACT_EGRESS) {
		cb = mlxsw_sp_setup_tc_block_cb_matchall_eg;
		ingress = false;
	} else {
		return -EOPNOTSUPP;
	}

	f->driver_block_list = &mlxsw_sp_block_cb_list;

	switch (f->command) {
	case FLOW_BLOCK_BIND:
		if (FUNC5(cb, mlxsw_sp_port,
					  &mlxsw_sp_block_cb_list))
			return -EBUSY;

		block_cb = FUNC3(cb, mlxsw_sp_port,
					       mlxsw_sp_port, NULL);
		if (FUNC0(block_cb))
			return FUNC1(block_cb);
		err = FUNC10(mlxsw_sp_port, f,
							  ingress);
		if (err) {
			FUNC4(block_cb);
			return err;
		}
		FUNC2(block_cb, f);
		FUNC8(&block_cb->driver_list, &mlxsw_sp_block_cb_list);
		return 0;
	case FLOW_BLOCK_UNBIND:
		FUNC11(mlxsw_sp_port,
						      f, ingress);
		block_cb = FUNC6(f->block, cb, mlxsw_sp_port);
		if (!block_cb)
			return -ENOENT;

		FUNC7(block_cb, f);
		FUNC9(&block_cb->driver_list);
		return 0;
	default:
		return -EOPNOTSUPP;
	}
}