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
struct mlxsw_sp_acl_block_binding {int /*<<< orphan*/  list; } ;
struct mlxsw_sp_acl_block {int dummy; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp_acl_block_binding*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct mlxsw_sp_acl_block_binding* FUNC2 (struct mlxsw_sp_acl_block*,struct mlxsw_sp_port*,int) ; 
 scalar_t__ FUNC3 (struct mlxsw_sp_acl_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp*,struct mlxsw_sp_acl_block*,struct mlxsw_sp_acl_block_binding*) ; 

int FUNC5(struct mlxsw_sp *mlxsw_sp,
			      struct mlxsw_sp_acl_block *block,
			      struct mlxsw_sp_port *mlxsw_sp_port,
			      bool ingress)
{
	struct mlxsw_sp_acl_block_binding *binding;

	binding = FUNC2(block, mlxsw_sp_port, ingress);
	if (!binding)
		return -ENOENT;

	FUNC1(&binding->list);

	if (FUNC3(block))
		FUNC4(mlxsw_sp, block, binding);

	FUNC0(binding);
	return 0;
}