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
struct netdev_private {int /*<<< orphan*/  ring_dma; int /*<<< orphan*/  rx_ring; int /*<<< orphan*/  pci_dev; } ;
struct netdev_desc {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int RX_RING_SIZE ; 
 int TX_RING_SIZE ; 
 struct netdev_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev)
{
	struct netdev_private *np = FUNC0(dev);
	FUNC1(np->pci_dev,
		sizeof(struct netdev_desc) * (RX_RING_SIZE+TX_RING_SIZE),
		np->rx_ring, np->ring_dma);
}