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
typedef  size_t u32 ;
struct sk_buff {int /*<<< orphan*/  data_len; int /*<<< orphan*/  len; int /*<<< orphan*/  truesize; } ;
struct bnad_rx_unmap_q {struct bnad_rx_unmap* unmap; } ;
struct TYPE_6__ {scalar_t__ len; } ;
struct bnad_rx_unmap {TYPE_3__ vector; int /*<<< orphan*/ * page; scalar_t__ page_offset; } ;
struct bnad {TYPE_1__* pcidev; } ;
struct bna_rcb {size_t consumer_index; int /*<<< orphan*/  q_depth; struct bnad* bnad; struct bnad_rx_unmap_q* unmap_q; } ;
struct bna_cq_entry {int /*<<< orphan*/  length; int /*<<< orphan*/  rxq_id; } ;
struct bna_ccb {size_t producer_index; int /*<<< orphan*/  q_depth; struct bna_rcb** rcb; struct bna_cq_entry* sw_q; } ;
struct TYPE_5__ {int /*<<< orphan*/  nr_frags; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dma_addr ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,size_t) ; 
 TYPE_2__* FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static void
FUNC9(struct bna_ccb *ccb, struct sk_buff *skb, u32 nvecs)
{
	struct bna_rcb *rcb;
	struct bnad *bnad;
	struct bnad_rx_unmap_q *unmap_q;
	struct bna_cq_entry *cq, *cmpl;
	u32 ci, pi, totlen = 0;

	cq = ccb->sw_q;
	pi = ccb->producer_index;
	cmpl = &cq[pi];

	rcb = FUNC1(cmpl->rxq_id) ? ccb->rcb[1] : ccb->rcb[0];
	unmap_q = rcb->unmap_q;
	bnad = rcb->bnad;
	ci = rcb->consumer_index;

	/* prefetch header */
	FUNC6(FUNC5(unmap_q->unmap[ci].page) +
		 unmap_q->unmap[ci].page_offset);

	while (nvecs--) {
		struct bnad_rx_unmap *unmap;
		u32 len;

		unmap = &unmap_q->unmap[ci];
		FUNC0(ci, rcb->q_depth);

		FUNC3(&bnad->pcidev->dev,
			       FUNC2(&unmap->vector, dma_addr),
			       unmap->vector.len, DMA_FROM_DEVICE);

		len = FUNC4(cmpl->length);
		skb->truesize += unmap->vector.len;
		totlen += len;

		FUNC7(skb, FUNC8(skb)->nr_frags,
				   unmap->page, unmap->page_offset, len);

		unmap->page = NULL;
		unmap->vector.len = 0;

		FUNC0(pi, ccb->q_depth);
		cmpl = &cq[pi];
	}

	skb->len += totlen;
	skb->data_len += totlen;
}