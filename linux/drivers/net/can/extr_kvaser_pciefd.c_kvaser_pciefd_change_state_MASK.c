#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  restart_ms; struct net_device* dev; } ;
struct kvaser_pciefd_can {TYPE_1__ can; int /*<<< orphan*/  lock; } ;
struct can_frame {int dummy; } ;
typedef  enum can_state { ____Placeholder_can_state } can_state ;

/* Variables and functions */
 int CAN_STATE_BUS_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct can_frame*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvaser_pciefd_can*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct kvaser_pciefd_can *can,
				       struct can_frame *cf,
				       enum can_state new_state,
				       enum can_state tx_state,
				       enum can_state rx_state)
{
	FUNC1(can->can.dev, cf, tx_state, rx_state);

	if (new_state == CAN_STATE_BUS_OFF) {
		struct net_device *ndev = can->can.dev;
		unsigned long irq_flags;

		FUNC4(&can->lock, irq_flags);
		FUNC3(can->can.dev);
		FUNC5(&can->lock, irq_flags);

		/* Prevent CAN controller from auto recover from bus off */
		if (!can->can.restart_ms) {
			FUNC2(can);
			FUNC0(ndev);
		}
	}
}