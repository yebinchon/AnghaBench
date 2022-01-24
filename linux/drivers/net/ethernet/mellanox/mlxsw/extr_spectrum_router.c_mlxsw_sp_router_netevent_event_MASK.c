#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct notifier_block {int dummy; } ;
struct neighbour {int /*<<< orphan*/  dev; TYPE_4__* tbl; } ;
struct neigh_parms {int /*<<< orphan*/  dev; TYPE_1__* tbl; } ;
struct mlxsw_sp_port {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp_netevent_work {int /*<<< orphan*/  work; struct neighbour* n; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {TYPE_3__* router; } ;
struct TYPE_8__ {int /*<<< orphan*/  family; } ;
struct TYPE_6__ {unsigned long interval; } ;
struct TYPE_7__ {TYPE_2__ neighs_update; } ;
struct TYPE_5__ {int /*<<< orphan*/  family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  DELAY_PROBE_TIME ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct neigh_parms*,int /*<<< orphan*/ ) ; 
#define  NETEVENT_DELAY_PROBE_TIME_UPDATE 132 
#define  NETEVENT_IPV4_FWD_UPDATE_PRIORITY_UPDATE 131 
#define  NETEVENT_IPV4_MPATH_HASH_UPDATE 130 
#define  NETEVENT_IPV6_MPATH_HASH_UPDATE 129 
#define  NETEVENT_NEIGH_UPDATE 128 
 int NOTIFY_BAD ; 
 int NOTIFY_DONE ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 struct mlxsw_sp_netevent_work* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp_port*) ; 
 struct mlxsw_sp_port* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlxsw_sp_router_mp_hash_event_work ; 
 int /*<<< orphan*/  mlxsw_sp_router_neigh_event_work ; 
 int FUNC7 (void*,struct notifier_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlxsw_sp_router_update_priority_work ; 
 int /*<<< orphan*/  FUNC8 (struct neighbour*) ; 

__attribute__((used)) static int FUNC9(struct notifier_block *nb,
					  unsigned long event, void *ptr)
{
	struct mlxsw_sp_netevent_work *net_work;
	struct mlxsw_sp_port *mlxsw_sp_port;
	struct mlxsw_sp *mlxsw_sp;
	unsigned long interval;
	struct neigh_parms *p;
	struct neighbour *n;

	switch (event) {
	case NETEVENT_DELAY_PROBE_TIME_UPDATE:
		p = ptr;

		/* We don't care about changes in the default table. */
		if (!p->dev || (p->tbl->family != AF_INET &&
				p->tbl->family != AF_INET6))
			return NOTIFY_DONE;

		/* We are in atomic context and can't take RTNL mutex,
		 * so use RCU variant to walk the device chain.
		 */
		mlxsw_sp_port = FUNC6(p->dev);
		if (!mlxsw_sp_port)
			return NOTIFY_DONE;

		mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
		interval = FUNC2(FUNC1(p, DELAY_PROBE_TIME));
		mlxsw_sp->router->neighs_update.interval = interval;

		FUNC5(mlxsw_sp_port);
		break;
	case NETEVENT_NEIGH_UPDATE:
		n = ptr;

		if (n->tbl->family != AF_INET && n->tbl->family != AF_INET6)
			return NOTIFY_DONE;

		mlxsw_sp_port = FUNC6(n->dev);
		if (!mlxsw_sp_port)
			return NOTIFY_DONE;

		net_work = FUNC3(sizeof(*net_work), GFP_ATOMIC);
		if (!net_work) {
			FUNC5(mlxsw_sp_port);
			return NOTIFY_BAD;
		}

		FUNC0(&net_work->work, mlxsw_sp_router_neigh_event_work);
		net_work->mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
		net_work->n = n;

		/* Take a reference to ensure the neighbour won't be
		 * destructed until we drop the reference in delayed
		 * work.
		 */
		FUNC8(n);
		FUNC4(&net_work->work);
		FUNC5(mlxsw_sp_port);
		break;
	case NETEVENT_IPV4_MPATH_HASH_UPDATE:
	case NETEVENT_IPV6_MPATH_HASH_UPDATE:
		return FUNC7(ptr, nb,
				mlxsw_sp_router_mp_hash_event_work);

	case NETEVENT_IPV4_FWD_UPDATE_PRIORITY_UPDATE:
		return FUNC7(ptr, nb,
				mlxsw_sp_router_update_priority_work);
	}

	return NOTIFY_DONE;
}