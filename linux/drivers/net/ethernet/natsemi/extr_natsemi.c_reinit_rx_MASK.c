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
struct netdev_private {int cur_rx; TYPE_1__* rx_ring; TYPE_1__* rx_head_desc; scalar_t__ dirty_rx; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cmd_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  DescOwn ; 
 int RX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct netdev_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	struct netdev_private *np = FUNC1(dev);
	int i;

	/* RX Ring */
	np->dirty_rx = 0;
	np->cur_rx = RX_RING_SIZE;
	np->rx_head_desc = &np->rx_ring[0];
	/* Initialize all Rx descriptors. */
	for (i = 0; i < RX_RING_SIZE; i++)
		np->rx_ring[i].cmd_status = FUNC0(DescOwn);

	FUNC2(dev);
}