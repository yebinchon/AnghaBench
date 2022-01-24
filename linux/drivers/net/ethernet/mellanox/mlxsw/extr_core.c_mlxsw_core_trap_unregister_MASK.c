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
struct mlxsw_listener {int /*<<< orphan*/  is_ctrl; int /*<<< orphan*/  trap_group; int /*<<< orphan*/  trap_id; int /*<<< orphan*/  unreg_action; int /*<<< orphan*/  is_event; } ;
struct mlxsw_core {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_HPKT_LEN ; 
 int /*<<< orphan*/  hpkt ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_core*,struct mlxsw_listener const*,void*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_core*,int /*<<< orphan*/ ,char*) ; 

void FUNC4(struct mlxsw_core *mlxsw_core,
				const struct mlxsw_listener *listener,
				void *priv)
{
	char hpkt_pl[MLXSW_REG_HPKT_LEN];

	if (!listener->is_event) {
		FUNC2(hpkt_pl, listener->unreg_action,
				    listener->trap_id, listener->trap_group,
				    listener->is_ctrl);
		FUNC3(mlxsw_core, FUNC0(hpkt), hpkt_pl);
	}

	FUNC1(mlxsw_core, listener, priv);
}