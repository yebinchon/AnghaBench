#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct tc35815_local {TYPE_3__* tfd_base; TYPE_1__* tx_skbs; int /*<<< orphan*/  pci_dev; } ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  FDSystem; } ;
struct TYPE_6__ {TYPE_2__ fd; } ;
struct TYPE_4__ {scalar_t__ skb_dma; struct sk_buff* skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int TX_FD_NUM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct tc35815_local* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static void
FUNC9(struct net_device *dev)
{
	struct tc35815_local *lp = FUNC4(dev);
	int i;

	for (i = 0; i < TX_FD_NUM; i++) {
		u32 fdsystem = FUNC3(lp->tfd_base[i].fd.FDSystem);
		struct sk_buff *skb =
			fdsystem != 0xffffffff ?
			lp->tx_skbs[fdsystem].skb : NULL;
#ifdef DEBUG
		if (lp->tx_skbs[i].skb != skb) {
			printk("%s: tx_skbs mismatch(%d).\n", dev->name, i);
			panic_queues(dev);
		}
#else
		FUNC0(lp->tx_skbs[i].skb != skb);
#endif
		if (skb) {
			FUNC6(lp->pci_dev, lp->tx_skbs[i].skb_dma, skb->len, PCI_DMA_TODEVICE);
			lp->tx_skbs[i].skb = NULL;
			lp->tx_skbs[i].skb_dma = 0;
			FUNC2(skb);
		}
		lp->tfd_base[i].fd.FDSystem = FUNC1(0xffffffff);
	}

	FUNC8(dev);
}