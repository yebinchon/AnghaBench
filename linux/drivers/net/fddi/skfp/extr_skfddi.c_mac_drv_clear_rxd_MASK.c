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
struct sk_buff {int dummy; } ;
struct TYPE_3__ {struct sk_buff* skb; int /*<<< orphan*/  dma_addr; } ;
struct s_smt_fp_rxd {struct s_smt_fp_rxd* rxd_next; TYPE_1__ rxd_os; } ;
struct TYPE_4__ {int MaxFrameSize; int /*<<< orphan*/  pdev; } ;
struct s_smc {TYPE_2__ os; } ;
typedef  TYPE_2__ skfddi_priv ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(struct s_smc *smc, volatile struct s_smt_fp_rxd *rxd,
		       int frag_count)
{

	struct sk_buff *skb;

	FUNC2("entering mac_drv_clear_rxd\n");

	if (frag_count != 1)	// This is not allowed to happen.

		FUNC3("fddi: Multi-fragment clear!\n");

	for (; frag_count > 0; frag_count--) {
		skb = rxd->rxd_os.skb;
		if (skb != NULL) {
			skfddi_priv *bp = &smc->os;
			int MaxFrameSize = bp->MaxFrameSize;

			FUNC1(&bp->pdev, rxd->rxd_os.dma_addr,
					 MaxFrameSize, PCI_DMA_FROMDEVICE);

			FUNC0(skb);
			rxd->rxd_os.skb = NULL;
		}
		rxd = rxd->rxd_next;	// Next RXD.

	}
}