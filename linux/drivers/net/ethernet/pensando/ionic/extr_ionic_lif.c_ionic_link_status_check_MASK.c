#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct ionic_lif {int /*<<< orphan*/  state; struct net_device* netdev; TYPE_1__* info; } ;
struct TYPE_4__ {int /*<<< orphan*/  link_speed; int /*<<< orphan*/  link_status; } ;
struct TYPE_3__ {TYPE_2__ status; } ;

/* Variables and functions */
 int /*<<< orphan*/  IONIC_LIF_LINK_CHECK_REQUESTED ; 
 int /*<<< orphan*/  IONIC_LIF_UP ; 
 scalar_t__ IONIC_PORT_OPER_STATUS_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct ionic_lif *lif)
{
	struct net_device *netdev = lif->netdev;
	u16 link_status;
	bool link_up;

	link_status = FUNC1(lif->info->status.link_status);
	link_up = link_status == IONIC_PORT_OPER_STATUS_UP;

	/* filter out the no-change cases */
	if (link_up == FUNC5(netdev))
		goto link_out;

	if (link_up) {
		FUNC3(netdev, "Link up - %d Gbps\n",
			    FUNC2(lif->info->status.link_speed) / 1000);

		if (FUNC9(IONIC_LIF_UP, lif->state)) {
			FUNC8(lif->netdev);
			FUNC6(netdev);
		}
	} else {
		FUNC3(netdev, "Link down\n");

		/* carrier off first to avoid watchdog timeout */
		FUNC4(netdev);
		if (FUNC9(IONIC_LIF_UP, lif->state))
			FUNC7(netdev);
	}

link_out:
	FUNC0(IONIC_LIF_LINK_CHECK_REQUESTED, lif->state);
}