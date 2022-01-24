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
struct netlink_ext_ack {int dummy; } ;
struct mlxsw_sp_port {int dummy; } ;
struct mlxsw_sp_acl_block_binding {int ingress; int /*<<< orphan*/  list; struct mlxsw_sp_port* mlxsw_sp_port; } ;
struct mlxsw_sp_acl_block {int /*<<< orphan*/  binding_list; scalar_t__ egress_blocker_rule_count; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp_acl_block_binding*) ; 
 struct mlxsw_sp_acl_block_binding* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp_acl_block*,struct mlxsw_sp_port*,int) ; 
 int FUNC6 (struct mlxsw_sp*,struct mlxsw_sp_acl_block*,struct mlxsw_sp_acl_block_binding*) ; 
 scalar_t__ FUNC7 (struct mlxsw_sp_acl_block*) ; 

int FUNC8(struct mlxsw_sp *mlxsw_sp,
			    struct mlxsw_sp_acl_block *block,
			    struct mlxsw_sp_port *mlxsw_sp_port,
			    bool ingress,
			    struct netlink_ext_ack *extack)
{
	struct mlxsw_sp_acl_block_binding *binding;
	int err;

	if (FUNC1(FUNC5(block, mlxsw_sp_port, ingress)))
		return -EEXIST;

	if (!ingress && block->egress_blocker_rule_count) {
		FUNC0(extack, "Block cannot be bound to egress because it contains unsupported rules");
		return -EOPNOTSUPP;
	}

	binding = FUNC3(sizeof(*binding), GFP_KERNEL);
	if (!binding)
		return -ENOMEM;
	binding->mlxsw_sp_port = mlxsw_sp_port;
	binding->ingress = ingress;

	if (FUNC7(block)) {
		err = FUNC6(mlxsw_sp, block, binding);
		if (err)
			goto err_ruleset_bind;
	}

	FUNC4(&binding->list, &block->binding_list);
	return 0;

err_ruleset_bind:
	FUNC2(binding);
	return err;
}