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
struct sk_buff {unsigned int len; unsigned int data_len; unsigned int truesize; int /*<<< orphan*/  data; } ;
struct sge_rspq {scalar_t__ rx_recycle_buf; struct sk_buff* pg_skb; } ;
struct TYPE_4__ {scalar_t__ page; } ;
struct sge_fl {size_t cidx; unsigned int credits; int /*<<< orphan*/  alloc_size; TYPE_1__ pg_chunk; struct rx_sw_desc* sdesc; } ;
struct TYPE_5__ {scalar_t__ page; scalar_t__ offset; int /*<<< orphan*/  va; int /*<<< orphan*/  mapping; int /*<<< orphan*/ * p_cnt; } ;
struct rx_sw_desc {TYPE_2__ pg_chunk; } ;
struct adapter {int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_6__ {int /*<<< orphan*/  nr_frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 unsigned int SGE_RX_COPY_THRES ; 
 unsigned int SGE_RX_PULL_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,unsigned int) ; 
 struct sk_buff* FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dma_addr ; 
 int /*<<< orphan*/  FUNC2 (struct rx_sw_desc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*,struct sge_fl*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,unsigned int) ; 
 TYPE_3__* FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC13(struct adapter *adap, struct sge_fl *fl,
				     struct sge_rspq *q, unsigned int len,
				     unsigned int drop_thres)
{
	struct sk_buff *newskb, *skb;
	struct rx_sw_desc *sd = &fl->sdesc[fl->cidx];

	dma_addr_t dma_addr = FUNC2(sd, dma_addr);

	newskb = skb = q->pg_skb;
	if (!skb && (len <= SGE_RX_COPY_THRES)) {
		newskb = FUNC1(len, GFP_ATOMIC);
		if (FUNC3(newskb != NULL)) {
			FUNC0(newskb, len);
			FUNC5(adap->pdev, dma_addr, len,
					    PCI_DMA_FROMDEVICE);
			FUNC4(newskb->data, sd->pg_chunk.va, len);
			FUNC6(adap->pdev, dma_addr,
						       len,
						       PCI_DMA_FROMDEVICE);
		} else if (!drop_thres)
			return NULL;
recycle:
		fl->credits--;
		FUNC9(adap, fl, fl->cidx);
		q->rx_recycle_buf++;
		return newskb;
	}

	if (FUNC12(q->rx_recycle_buf || (!skb && fl->credits <= drop_thres)))
		goto recycle;

	FUNC8(sd->pg_chunk.p_cnt);

	if (!skb)
		newskb = FUNC1(SGE_RX_PULL_LEN, GFP_ATOMIC);

	if (FUNC12(!newskb)) {
		if (!drop_thres)
			return NULL;
		goto recycle;
	}

	FUNC5(adap->pdev, dma_addr, len,
				    PCI_DMA_FROMDEVICE);
	(*sd->pg_chunk.p_cnt)--;
	if (!*sd->pg_chunk.p_cnt && sd->pg_chunk.page != fl->pg_chunk.page)
		FUNC7(adap->pdev,
			       sd->pg_chunk.mapping,
			       fl->alloc_size,
			       PCI_DMA_FROMDEVICE);
	if (!skb) {
		FUNC0(newskb, SGE_RX_PULL_LEN);
		FUNC4(newskb->data, sd->pg_chunk.va, SGE_RX_PULL_LEN);
		FUNC10(newskb, 0, sd->pg_chunk.page,
				   sd->pg_chunk.offset + SGE_RX_PULL_LEN,
				   len - SGE_RX_PULL_LEN);
		newskb->len = len;
		newskb->data_len = len - SGE_RX_PULL_LEN;
		newskb->truesize += newskb->data_len;
	} else {
		FUNC10(newskb, FUNC11(newskb)->nr_frags,
				   sd->pg_chunk.page,
				   sd->pg_chunk.offset, len);
		newskb->len += len;
		newskb->data_len += len;
		newskb->truesize += len;
	}

	fl->credits--;
	/*
	 * We do not refill FLs here, we let the caller do it to overlap a
	 * prefetch.
	 */
	return newskb;
}