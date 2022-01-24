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
typedef  short u_long ;
struct net_device {short name; short irq; int /*<<< orphan*/  dev_addr; } ;
struct de4x5_private {int rxRingSize; int txRingSize; TYPE_2__* tx_ring; TYPE_1__* rx_ring; } ;
struct TYPE_4__ {int /*<<< orphan*/  buf; int /*<<< orphan*/  status; } ;
struct TYPE_3__ {int /*<<< orphan*/  buf; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int DEBUG_OPEN ; 
 int de4x5_debug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct de4x5_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3(struct net_device *dev)
{
    struct de4x5_private *lp = FUNC1(dev);
    int i;

    if (de4x5_debug & DEBUG_OPEN) {
	FUNC2("%s: de4x5 opening with irq %d\n",dev->name,dev->irq);
	FUNC2("\tphysical address: %pM\n", dev->dev_addr);
	FUNC2("Descriptor head addresses:\n");
	FUNC2("\t0x%8.8lx  0x%8.8lx\n",(u_long)lp->rx_ring,(u_long)lp->tx_ring);
	FUNC2("Descriptor addresses:\nRX: ");
	for (i=0;i<lp->rxRingSize-1;i++){
	    if (i < 3) {
		FUNC2("0x%8.8lx  ",(u_long)&lp->rx_ring[i].status);
	    }
	}
	FUNC2("...0x%8.8lx\n",(u_long)&lp->rx_ring[i].status);
	FUNC2("TX: ");
	for (i=0;i<lp->txRingSize-1;i++){
	    if (i < 3) {
		FUNC2("0x%8.8lx  ", (u_long)&lp->tx_ring[i].status);
	    }
	}
	FUNC2("...0x%8.8lx\n", (u_long)&lp->tx_ring[i].status);
	FUNC2("Descriptor buffers:\nRX: ");
	for (i=0;i<lp->rxRingSize-1;i++){
	    if (i < 3) {
		FUNC2("0x%8.8x  ",FUNC0(lp->rx_ring[i].buf));
	    }
	}
	FUNC2("...0x%8.8x\n",FUNC0(lp->rx_ring[i].buf));
	FUNC2("TX: ");
	for (i=0;i<lp->txRingSize-1;i++){
	    if (i < 3) {
		FUNC2("0x%8.8x  ", FUNC0(lp->tx_ring[i].buf));
	    }
	}
	FUNC2("...0x%8.8x\n", FUNC0(lp->tx_ring[i].buf));
	FUNC2("Ring size:\nRX: %d\nTX: %d\n",
	       (short)lp->rxRingSize,
	       (short)lp->txRingSize);
    }
}