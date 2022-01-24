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
struct tc35815_local {int /*<<< orphan*/ * fd_buf; int /*<<< orphan*/  fd_buf_dma; int /*<<< orphan*/  pci_dev; TYPE_4__* rx_skbs; int /*<<< orphan*/ * fbl_ptr; int /*<<< orphan*/ * rfd_cur; int /*<<< orphan*/ * rfd_limit; int /*<<< orphan*/ * rfd_base; TYPE_3__* tfd_base; TYPE_1__* tx_skbs; } ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_8__ {int /*<<< orphan*/ * skb; int /*<<< orphan*/  skb_dma; } ;
struct TYPE_6__ {int /*<<< orphan*/  FDSystem; } ;
struct TYPE_7__ {TYPE_2__ fd; } ;
struct TYPE_5__ {scalar_t__ skb_dma; struct sk_buff* skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FD_PAGE_NUM ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int RX_BUF_NUM ; 
 int TX_FD_NUM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct tc35815_local* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC10(struct net_device *dev)
{
	struct tc35815_local *lp = FUNC5(dev);
	int i;

	if (lp->tfd_base) {
		for (i = 0; i < TX_FD_NUM; i++) {
			u32 fdsystem = FUNC4(lp->tfd_base[i].fd.FDSystem);
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
				FUNC8(lp->pci_dev, lp->tx_skbs[i].skb_dma, skb->len, PCI_DMA_TODEVICE);
				FUNC2(skb);
				lp->tx_skbs[i].skb = NULL;
				lp->tx_skbs[i].skb_dma = 0;
			}
			lp->tfd_base[i].fd.FDSystem = FUNC1(0xffffffff);
		}
	}

	lp->rfd_base = NULL;
	lp->rfd_limit = NULL;
	lp->rfd_cur = NULL;
	lp->fbl_ptr = NULL;

	for (i = 0; i < RX_BUF_NUM; i++) {
		if (lp->rx_skbs[i].skb) {
			FUNC3(lp->pci_dev, lp->rx_skbs[i].skb,
				       lp->rx_skbs[i].skb_dma);
			lp->rx_skbs[i].skb = NULL;
		}
	}
	if (lp->fd_buf) {
		FUNC7(lp->pci_dev, PAGE_SIZE * FD_PAGE_NUM,
				    lp->fd_buf, lp->fd_buf_dma);
		lp->fd_buf = NULL;
	}
}