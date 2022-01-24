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
struct mlx5_lag {TYPE_3__* pf; } ;
struct lag_tracker {TYPE_1__* netdev_state; } ;
struct TYPE_6__ {int /*<<< orphan*/  events; } ;
struct TYPE_8__ {TYPE_2__ priv; } ;
struct TYPE_7__ {TYPE_4__* dev; } ;
struct TYPE_5__ {int tx_enabled; int link_up; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_DEV_EVENT_PORT_AFFINITY ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_lag*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_lag*,struct lag_tracker*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void FUNC4(struct mlx5_lag *ldev, int port)
{
	struct lag_tracker tracker;

	if (!FUNC0(ldev))
		return;

	switch (port) {
	case 0:
		tracker.netdev_state[0].tx_enabled = true;
		tracker.netdev_state[1].tx_enabled = true;
		tracker.netdev_state[0].link_up = true;
		tracker.netdev_state[1].link_up = true;
		break;
	case 1:
		tracker.netdev_state[0].tx_enabled = true;
		tracker.netdev_state[0].link_up = true;
		tracker.netdev_state[1].tx_enabled = false;
		tracker.netdev_state[1].link_up = false;
		break;
	case 2:
		tracker.netdev_state[0].tx_enabled = false;
		tracker.netdev_state[0].link_up = false;
		tracker.netdev_state[1].tx_enabled = true;
		tracker.netdev_state[1].link_up = true;
		break;
	default:
		FUNC1(ldev->pf[0].dev, "Invalid affinity port %d",
			       port);
		return;
	}

	if (tracker.netdev_state[0].tx_enabled)
		FUNC3(ldev->pf[0].dev->priv.events,
					 MLX5_DEV_EVENT_PORT_AFFINITY,
					 (void *)0);

	if (tracker.netdev_state[1].tx_enabled)
		FUNC3(ldev->pf[1].dev->priv.events,
					 MLX5_DEV_EVENT_PORT_AFFINITY,
					 (void *)0);

	FUNC2(ldev, &tracker);
}