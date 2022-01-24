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
typedef  int u32 ;
struct net_device {int* dev_addr; TYPE_3__* phydev; } ;
struct au1000_private {int tx_head; int tx_tail; int rx_head; int /*<<< orphan*/  lock; TYPE_4__* mac; TYPE_2__** rx_dma_ring; TYPE_1__** tx_dma_ring; } ;
struct TYPE_8__ {int /*<<< orphan*/  vlan1_tag; int /*<<< orphan*/  control; int /*<<< orphan*/  mac_addr_low; int /*<<< orphan*/  mac_addr_high; } ;
struct TYPE_7__ {scalar_t__ duplex; scalar_t__ link; } ;
struct TYPE_6__ {int buff_stat; } ;
struct TYPE_5__ {int buff_stat; } ;

/* Variables and functions */
 scalar_t__ DUPLEX_FULL ; 
 int MAC_BIG_ENDIAN ; 
 int MAC_DISABLE_RX_OWN ; 
 int MAC_FULL_DUPLEX ; 
 int MAC_RX_ENABLE ; 
 int MAC_TX_ENABLE ; 
 int NUM_RX_DMA ; 
 int RX_DMA_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/  hw ; 
 struct au1000_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct au1000_private*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	struct au1000_private *aup = FUNC1(dev);
	unsigned long flags;
	int i;
	u32 control;

	FUNC2(aup, hw, dev, "au1000_init\n");

	/* bring the device out of reset */
	FUNC0(dev, 1);

	FUNC3(&aup->lock, flags);

	FUNC6(0, &aup->mac->control);
	aup->tx_head = (aup->tx_dma_ring[0]->buff_stat & 0xC) >> 2;
	aup->tx_tail = aup->tx_head;
	aup->rx_head = (aup->rx_dma_ring[0]->buff_stat & 0xC) >> 2;

	FUNC6(dev->dev_addr[5]<<8 | dev->dev_addr[4],
					&aup->mac->mac_addr_high);
	FUNC6(dev->dev_addr[3]<<24 | dev->dev_addr[2]<<16 |
		dev->dev_addr[1]<<8 | dev->dev_addr[0],
					&aup->mac->mac_addr_low);


	for (i = 0; i < NUM_RX_DMA; i++)
		aup->rx_dma_ring[i]->buff_stat |= RX_DMA_ENABLE;

	FUNC5(); /* drain writebuffer */

	control = MAC_RX_ENABLE | MAC_TX_ENABLE;
#ifndef CONFIG_CPU_LITTLE_ENDIAN
	control |= MAC_BIG_ENDIAN;
#endif
	if (dev->phydev) {
		if (dev->phydev->link && (DUPLEX_FULL == dev->phydev->duplex))
			control |= MAC_FULL_DUPLEX;
		else
			control |= MAC_DISABLE_RX_OWN;
	} else { /* PHY-less op, assume full-duplex */
		control |= MAC_FULL_DUPLEX;
	}

	FUNC6(control, &aup->mac->control);
	FUNC6(0x8100, &aup->mac->vlan1_tag); /* activate vlan support */
	FUNC5(); /* drain writebuffer */

	FUNC4(&aup->lock, flags);
	return 0;
}