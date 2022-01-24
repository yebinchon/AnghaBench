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
struct mlxsw_sp_port {struct mlxsw_sp_acl_block* eg_acl_block; struct mlxsw_sp_acl_block* ing_acl_block; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp_acl_block {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
struct flow_block_offload {int /*<<< orphan*/  extack; int /*<<< orphan*/  net; int /*<<< orphan*/  block; } ;
struct flow_block_cb {int /*<<< orphan*/  driver_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct flow_block_cb*) ; 
 int FUNC1 (struct flow_block_cb*) ; 
 int /*<<< orphan*/  FUNC2 (struct flow_block_cb*,struct flow_block_offload*) ; 
 struct flow_block_cb* FUNC3 (int /*<<< orphan*/ ,struct mlxsw_sp*,struct mlxsw_sp_acl_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct flow_block_cb*) ; 
 int /*<<< orphan*/  FUNC5 (struct flow_block_cb*) ; 
 int /*<<< orphan*/  FUNC6 (struct flow_block_cb*) ; 
 struct flow_block_cb* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlxsw_sp*) ; 
 struct mlxsw_sp_acl_block* FUNC8 (struct flow_block_cb*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct mlxsw_sp*,struct mlxsw_sp_acl_block*,struct mlxsw_sp_port*,int,int /*<<< orphan*/ ) ; 
 struct mlxsw_sp_acl_block* FUNC11 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mlxsw_sp_acl_block*) ; 
 int /*<<< orphan*/  mlxsw_sp_block_cb_list ; 
 int /*<<< orphan*/  mlxsw_sp_setup_tc_block_cb_flower ; 
 int /*<<< orphan*/  mlxsw_sp_tc_block_flower_release ; 

__attribute__((used)) static int
FUNC13(struct mlxsw_sp_port *mlxsw_sp_port,
			            struct flow_block_offload *f, bool ingress)
{
	struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
	struct mlxsw_sp_acl_block *acl_block;
	struct flow_block_cb *block_cb;
	bool register_block = false;
	int err;

	block_cb = FUNC7(f->block,
					mlxsw_sp_setup_tc_block_cb_flower,
					mlxsw_sp);
	if (!block_cb) {
		acl_block = FUNC11(mlxsw_sp, f->net);
		if (!acl_block)
			return -ENOMEM;
		block_cb = FUNC3(mlxsw_sp_setup_tc_block_cb_flower,
					       mlxsw_sp, acl_block,
					       mlxsw_sp_tc_block_flower_release);
		if (FUNC0(block_cb)) {
			FUNC12(acl_block);
			err = FUNC1(block_cb);
			goto err_cb_register;
		}
		register_block = true;
	} else {
		acl_block = FUNC8(block_cb);
	}
	FUNC6(block_cb);
	err = FUNC10(mlxsw_sp, acl_block,
				      mlxsw_sp_port, ingress, f->extack);
	if (err)
		goto err_block_bind;

	if (ingress)
		mlxsw_sp_port->ing_acl_block = acl_block;
	else
		mlxsw_sp_port->eg_acl_block = acl_block;

	if (register_block) {
		FUNC2(block_cb, f);
		FUNC9(&block_cb->driver_list, &mlxsw_sp_block_cb_list);
	}

	return 0;

err_block_bind:
	if (!FUNC4(block_cb))
		FUNC5(block_cb);
err_cb_register:
	return err;
}