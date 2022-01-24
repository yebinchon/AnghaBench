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
typedef  int /*<<< orphan*/  u16 ;
struct mlxsw_sp_port {int /*<<< orphan*/  local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXSW_REG_SPVM_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  spvm ; 

__attribute__((used)) static int FUNC5(struct mlxsw_sp_port *mlxsw_sp_port,
				    u16 vid_begin, u16 vid_end,
				    bool is_member, bool untagged)
{
	struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
	char *spvm_pl;
	int err;

	spvm_pl = FUNC2(MLXSW_REG_SPVM_LEN, GFP_KERNEL);
	if (!spvm_pl)
		return -ENOMEM;

	FUNC3(spvm_pl, mlxsw_sp_port->local_port,	vid_begin,
			    vid_end, is_member, untagged);
	err = FUNC4(mlxsw_sp->core, FUNC0(spvm), spvm_pl);
	FUNC1(spvm_pl);
	return err;
}