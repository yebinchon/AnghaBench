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
typedef  int u32 ;
struct tx_desc {int cmd_sts; int byte_cnt; int /*<<< orphan*/  buf_ptr; } ;
struct sk_buff {int dummy; } ;
struct pxa168_eth_private {scalar_t__ tx_desc_count; int tx_used_desc_q; int tx_ring_size; TYPE_2__* pdev; struct sk_buff** tx_skb; struct tx_desc* p_tx_desc_area; int /*<<< orphan*/  work_todo; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BUF_OWNED_BY_DMA ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int TX_ERROR ; 
 int /*<<< orphan*/  WORK_TX_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 struct pxa168_eth_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, int force)
{
	struct pxa168_eth_private *pep = FUNC4(dev);
	struct tx_desc *desc;
	u32 cmd_sts;
	struct sk_buff *skb;
	int tx_index;
	dma_addr_t addr;
	int count;
	int released = 0;

	FUNC5(dev);

	pep->work_todo &= ~WORK_TX_DONE;
	while (pep->tx_desc_count > 0) {
		tx_index = pep->tx_used_desc_q;
		desc = &pep->p_tx_desc_area[tx_index];
		cmd_sts = desc->cmd_sts;
		if (!force && (cmd_sts & BUF_OWNED_BY_DMA)) {
			if (released > 0) {
				goto txq_reclaim_end;
			} else {
				released = -1;
				goto txq_reclaim_end;
			}
		}
		pep->tx_used_desc_q = (tx_index + 1) % pep->tx_ring_size;
		pep->tx_desc_count--;
		addr = desc->buf_ptr;
		count = desc->byte_cnt;
		skb = pep->tx_skb[tx_index];
		if (skb)
			pep->tx_skb[tx_index] = NULL;

		if (cmd_sts & TX_ERROR) {
			if (FUNC2())
				FUNC3(dev, "Error in TX\n");
			dev->stats.tx_errors++;
		}
		FUNC1(&pep->pdev->dev, addr, count, DMA_TO_DEVICE);
		if (skb)
			FUNC0(skb);
		released++;
	}
txq_reclaim_end:
	FUNC6(dev);
	return released;
}