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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct sge_fl {size_t cidx; unsigned int credits; unsigned int size; int /*<<< orphan*/  buf_size; struct rx_sw_desc* sdesc; } ;
struct rx_sw_desc {struct sk_buff* skb; } ;
struct adapter {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int GFP_ATOMIC ; 
 int /*<<< orphan*/  MAX_RX_REFILL ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 unsigned int SGE_RX_COPY_THRES ; 
 int __GFP_COMP ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,struct sge_fl*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,unsigned int) ; 
 struct sk_buff* FUNC2 (unsigned int,int) ; 
 int /*<<< orphan*/  dma_addr ; 
 int /*<<< orphan*/  FUNC3 (struct rx_sw_desc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct adapter*,struct sge_fl*,size_t) ; 
 scalar_t__ FUNC12 (struct adapter*,struct sge_fl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC15(struct adapter *adap, struct sge_fl *fl,
				  unsigned int len, unsigned int drop_thres)
{
	struct sk_buff *skb = NULL;
	struct rx_sw_desc *sd = &fl->sdesc[fl->cidx];

	FUNC10(sd->skb->data);
	fl->credits--;

	if (len <= SGE_RX_COPY_THRES) {
		skb = FUNC2(len, GFP_ATOMIC);
		if (FUNC4(skb != NULL)) {
			FUNC1(skb, len);
			FUNC7(adap->pdev,
					    FUNC3(sd, dma_addr), len,
					    PCI_DMA_FROMDEVICE);
			FUNC5(skb->data, sd->skb->data, len);
			FUNC8(adap->pdev,
					    FUNC3(sd, dma_addr), len,
					    PCI_DMA_FROMDEVICE);
		} else if (!drop_thres)
			goto use_orig_buf;
recycle:
		FUNC11(adap, fl, fl->cidx);
		return skb;
	}

	if (FUNC14(fl->credits < drop_thres) &&
	    FUNC12(adap, fl, FUNC6(MAX_RX_REFILL, fl->size - fl->credits - 1),
		      GFP_ATOMIC | __GFP_COMP) == 0)
		goto recycle;

use_orig_buf:
	FUNC9(adap->pdev, FUNC3(sd, dma_addr),
			 fl->buf_size, PCI_DMA_FROMDEVICE);
	skb = sd->skb;
	FUNC13(skb, len);
	FUNC0(adap, fl);
	return skb;
}