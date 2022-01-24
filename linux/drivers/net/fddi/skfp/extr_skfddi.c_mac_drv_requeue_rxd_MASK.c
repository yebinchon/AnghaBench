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
struct sk_buff {unsigned char* data; } ;
struct TYPE_4__ {void* dma_addr; struct sk_buff* skb; } ;
struct s_smt_fp_rxd {TYPE_2__ rxd_os; struct s_smt_fp_rxd* rxd_next; } ;
struct TYPE_3__ {int MaxFrameSize; unsigned char* LocalRxBuffer; int /*<<< orphan*/  pdev; void* LocalRxBufferDMA; } ;
struct s_smc {TYPE_1__ os; } ;
typedef  void* dma_addr_t ;

/* Variables and functions */
 int FIRST_FRAG ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct s_smt_fp_rxd* FUNC0 (struct s_smc*) ; 
 int LAST_FRAG ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 struct sk_buff* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct s_smc*,unsigned char*,void*,int,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 

void FUNC8(struct s_smc *smc, volatile struct s_smt_fp_rxd *rxd,
			 int frag_count)
{
	volatile struct s_smt_fp_rxd *next_rxd;
	volatile struct s_smt_fp_rxd *src_rxd;
	struct sk_buff *skb;
	int MaxFrameSize;
	unsigned char *v_addr;
	dma_addr_t b_addr;

	if (frag_count != 1)	// This is not allowed to happen.

		FUNC5("fddi: Multi-fragment requeue!\n");

	MaxFrameSize = smc->os.MaxFrameSize;
	src_rxd = rxd;
	for (; frag_count > 0; frag_count--) {
		next_rxd = src_rxd->rxd_next;
		rxd = FUNC0(smc);

		skb = src_rxd->rxd_os.skb;
		if (skb == NULL) {	// this should not happen

			FUNC4("Requeue with no skb in rxd!\n");
			skb = FUNC1(MaxFrameSize + 3, GFP_ATOMIC);
			if (skb) {
				// we got a skb
				rxd->rxd_os.skb = skb;
				FUNC7(skb, 3);
				FUNC6(skb, MaxFrameSize);
				v_addr = skb->data;
				b_addr = FUNC3(&smc->os.pdev,
							v_addr,
							MaxFrameSize,
							PCI_DMA_FROMDEVICE);
				rxd->rxd_os.dma_addr = b_addr;
			} else {
				// no skb available, use local buffer
				FUNC4("Queueing invalid buffer!\n");
				rxd->rxd_os.skb = NULL;
				v_addr = smc->os.LocalRxBuffer;
				b_addr = smc->os.LocalRxBufferDMA;
			}
		} else {
			// we use skb from old rxd
			rxd->rxd_os.skb = skb;
			v_addr = skb->data;
			b_addr = FUNC3(&smc->os.pdev,
						v_addr,
						MaxFrameSize,
						PCI_DMA_FROMDEVICE);
			rxd->rxd_os.dma_addr = b_addr;
		}
		FUNC2(smc, v_addr, b_addr, MaxFrameSize,
			    FIRST_FRAG | LAST_FRAG);

		src_rxd = next_rxd;
	}
}