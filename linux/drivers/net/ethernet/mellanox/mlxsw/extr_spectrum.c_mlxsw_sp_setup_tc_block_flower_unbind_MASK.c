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
struct mlxsw_sp_port {int /*<<< orphan*/ * eg_acl_block; int /*<<< orphan*/ * ing_acl_block; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp_acl_block {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
struct flow_block_offload {int /*<<< orphan*/  block; } ;
struct flow_block_cb {int /*<<< orphan*/  driver_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct flow_block_cb*) ; 
 struct flow_block_cb* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlxsw_sp*) ; 
 struct mlxsw_sp_acl_block* FUNC2 (struct flow_block_cb*) ; 
 int /*<<< orphan*/  FUNC3 (struct flow_block_cb*,struct flow_block_offload*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct mlxsw_sp*,struct mlxsw_sp_acl_block*,struct mlxsw_sp_port*,int) ; 
 int /*<<< orphan*/  mlxsw_sp_setup_tc_block_cb_flower ; 

__attribute__((used)) static void
FUNC6(struct mlxsw_sp_port *mlxsw_sp_port,
				      struct flow_block_offload *f, bool ingress)
{
	struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
	struct mlxsw_sp_acl_block *acl_block;
	struct flow_block_cb *block_cb;
	int err;

	block_cb = FUNC1(f->block,
					mlxsw_sp_setup_tc_block_cb_flower,
					mlxsw_sp);
	if (!block_cb)
		return;

	if (ingress)
		mlxsw_sp_port->ing_acl_block = NULL;
	else
		mlxsw_sp_port->eg_acl_block = NULL;

	acl_block = FUNC2(block_cb);
	err = FUNC5(mlxsw_sp, acl_block,
					mlxsw_sp_port, ingress);
	if (!err && !FUNC0(block_cb)) {
		FUNC3(block_cb, f);
		FUNC4(&block_cb->driver_list);
	}
}