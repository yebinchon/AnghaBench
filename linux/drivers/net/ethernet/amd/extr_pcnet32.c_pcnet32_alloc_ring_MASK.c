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
struct sk_buff {int dummy; } ;
struct pcnet32_tx_head {int dummy; } ;
struct pcnet32_rx_head {int dummy; } ;
struct pcnet32_private {int tx_ring_size; int rx_ring_size; void* rx_skbuff; void* tx_skbuff; void* rx_dma_addr; void* tx_dma_addr; int /*<<< orphan*/ * rx_ring; int /*<<< orphan*/  rx_ring_dma_addr; int /*<<< orphan*/  pci_dev; int /*<<< orphan*/ * tx_ring; int /*<<< orphan*/  tx_ring_dma_addr; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  drv ; 
 void* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 struct pcnet32_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcnet32_private*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, const char *name)
{
	struct pcnet32_private *lp = FUNC1(dev);

	lp->tx_ring = FUNC3(lp->pci_dev,
					   sizeof(struct pcnet32_tx_head) *
					   lp->tx_ring_size,
					   &lp->tx_ring_dma_addr);
	if (lp->tx_ring == NULL) {
		FUNC2(lp, drv, dev, "Consistent memory allocation failed\n");
		return -ENOMEM;
	}

	lp->rx_ring = FUNC3(lp->pci_dev,
					   sizeof(struct pcnet32_rx_head) *
					   lp->rx_ring_size,
					   &lp->rx_ring_dma_addr);
	if (lp->rx_ring == NULL) {
		FUNC2(lp, drv, dev, "Consistent memory allocation failed\n");
		return -ENOMEM;
	}

	lp->tx_dma_addr = FUNC0(lp->tx_ring_size, sizeof(dma_addr_t),
				  GFP_KERNEL);
	if (!lp->tx_dma_addr)
		return -ENOMEM;

	lp->rx_dma_addr = FUNC0(lp->rx_ring_size, sizeof(dma_addr_t),
				  GFP_KERNEL);
	if (!lp->rx_dma_addr)
		return -ENOMEM;

	lp->tx_skbuff = FUNC0(lp->tx_ring_size, sizeof(struct sk_buff *),
				GFP_KERNEL);
	if (!lp->tx_skbuff)
		return -ENOMEM;

	lp->rx_skbuff = FUNC0(lp->rx_ring_size, sizeof(struct sk_buff *),
				GFP_KERNEL);
	if (!lp->rx_skbuff)
		return -ENOMEM;

	return 0;
}