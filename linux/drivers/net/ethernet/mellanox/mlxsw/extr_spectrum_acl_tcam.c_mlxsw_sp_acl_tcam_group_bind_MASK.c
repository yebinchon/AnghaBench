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
struct mlxsw_sp_port {int /*<<< orphan*/  local_port; } ;
struct mlxsw_sp_acl_tcam_group {int /*<<< orphan*/  id; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_PPBT_LEN ; 
 int /*<<< orphan*/  MLXSW_REG_PXBT_E_EACL ; 
 int /*<<< orphan*/  MLXSW_REG_PXBT_E_IACL ; 
 int /*<<< orphan*/  MLXSW_REG_PXBT_OP_BIND ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ppbt ; 

__attribute__((used)) static int
FUNC3(struct mlxsw_sp *mlxsw_sp,
			     struct mlxsw_sp_acl_tcam_group *group,
			     struct mlxsw_sp_port *mlxsw_sp_port,
			     bool ingress)
{
	char ppbt_pl[MLXSW_REG_PPBT_LEN];

	FUNC1(ppbt_pl, ingress ? MLXSW_REG_PXBT_E_IACL :
					       MLXSW_REG_PXBT_E_EACL,
			    MLXSW_REG_PXBT_OP_BIND, mlxsw_sp_port->local_port,
			    group->id);
	return FUNC2(mlxsw_sp->core, FUNC0(ppbt), ppbt_pl);
}