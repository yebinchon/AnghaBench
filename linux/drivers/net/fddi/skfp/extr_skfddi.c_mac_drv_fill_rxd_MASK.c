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
struct TYPE_4__ {unsigned long dma_addr; struct sk_buff* skb; } ;
struct s_smt_fp_rxd {TYPE_2__ rxd_os; } ;
struct TYPE_3__ {int MaxFrameSize; unsigned char* LocalRxBuffer; unsigned long LocalRxBufferDMA; int /*<<< orphan*/  pdev; } ;
struct s_smc {TYPE_1__ os; } ;

/* Variables and functions */
 int FIRST_FRAG ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct s_smt_fp_rxd* FUNC0 (struct s_smc*) ; 
 scalar_t__ FUNC1 (struct s_smc*) ; 
 int LAST_FRAG ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 struct sk_buff* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct s_smc*,unsigned char*,unsigned long,int,int) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 

void FUNC8(struct s_smc *smc)
{
	int MaxFrameSize;
	unsigned char *v_addr;
	unsigned long b_addr;
	struct sk_buff *skb;
	volatile struct s_smt_fp_rxd *rxd;

	FUNC5("entering mac_drv_fill_rxd\n");

	// Walk through the list of free receive buffers, passing receive
	// buffers to the HWM as long as RXDs are available.

	MaxFrameSize = smc->os.MaxFrameSize;
	// Check if there is any RXD left.
	while (FUNC1(smc) > 0) {
		FUNC5(".\n");

		rxd = FUNC0(smc);
		skb = FUNC2(MaxFrameSize + 3, GFP_ATOMIC);
		if (skb) {
			// we got a skb
			FUNC7(skb, 3);
			FUNC6(skb, MaxFrameSize);
			v_addr = skb->data;
			b_addr = FUNC4(&smc->os.pdev,
						v_addr,
						MaxFrameSize,
						PCI_DMA_FROMDEVICE);
			rxd->rxd_os.dma_addr = b_addr;
		} else {
			// no skb available, use local buffer
			// System has run out of buffer memory, but we want to
			// keep the receiver running in hope of better times.
			// Multiple descriptors may point to this local buffer,
			// so data in it must be considered invalid.
			FUNC5("Queueing invalid buffer!\n");
			v_addr = smc->os.LocalRxBuffer;
			b_addr = smc->os.LocalRxBufferDMA;
		}

		rxd->rxd_os.skb = skb;

		// Pass receive buffer to HWM.
		FUNC3(smc, v_addr, b_addr, MaxFrameSize,
			    FIRST_FRAG | LAST_FRAG);
	}
	FUNC5("leaving mac_drv_fill_rxd\n");
}