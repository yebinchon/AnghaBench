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
struct mlxsw_listener {int /*<<< orphan*/  is_ctrl; int /*<<< orphan*/  trap_group; int /*<<< orphan*/  trap_id; } ;
struct mlxsw_core {int dummy; } ;
typedef  enum mlxsw_reg_hpkt_action { ____Placeholder_mlxsw_reg_hpkt_action } mlxsw_reg_hpkt_action ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_HPKT_LEN ; 
 int /*<<< orphan*/  hpkt ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlxsw_core*,int /*<<< orphan*/ ,char*) ; 

int FUNC3(struct mlxsw_core *mlxsw_core,
			       const struct mlxsw_listener *listener,
			       enum mlxsw_reg_hpkt_action action)
{
	char hpkt_pl[MLXSW_REG_HPKT_LEN];

	FUNC1(hpkt_pl, action, listener->trap_id,
			    listener->trap_group, listener->is_ctrl);
	return FUNC2(mlxsw_core, FUNC0(hpkt), hpkt_pl);
}