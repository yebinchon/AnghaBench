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
struct pcnet32_private {int tx_ring_size; scalar_t__* tx_dma_addr; TYPE_2__** tx_skbuff; int /*<<< orphan*/  pci_dev; TYPE_1__* tx_ring; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; } ;
struct TYPE_3__ {scalar_t__ status; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 struct pcnet32_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	struct pcnet32_private *lp = FUNC1(dev);
	int i;

	for (i = 0; i < lp->tx_ring_size; i++) {
		lp->tx_ring[i].status = 0;	/* CPU owns buffer */
		FUNC4();		/* Make sure adapter sees owner change */
		if (lp->tx_skbuff[i]) {
			if (!FUNC2(lp->pci_dev,
						   lp->tx_dma_addr[i]))
				FUNC3(lp->pci_dev,
						 lp->tx_dma_addr[i],
						 lp->tx_skbuff[i]->len,
						 PCI_DMA_TODEVICE);
			FUNC0(lp->tx_skbuff[i]);
		}
		lp->tx_skbuff[i] = NULL;
		lp->tx_dma_addr[i] = 0;
	}
}