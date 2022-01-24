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
typedef  scalar_t__ u32 ;
typedef  size_t u16 ;
struct skb_shared_info {unsigned int nr_frags; int /*<<< orphan*/ * frags; } ;
struct sk_buff {size_t data_len; size_t len; int /*<<< orphan*/  truesize; } ;
struct rx_agg_cmp {size_t rx_agg_cmp_opaque; int /*<<< orphan*/  rx_agg_cmp_len_flags_type; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct page {int dummy; } ;
struct bnxt_sw_rx_agg_bd {struct page* page; int /*<<< orphan*/  mapping; int /*<<< orphan*/  offset; } ;
struct bnxt_rx_ring_info {size_t rx_agg_prod; int /*<<< orphan*/  rx_agg_bmap; struct bnxt_sw_rx_agg_bd* rx_agg_ring; } ;
struct bnxt_napi {struct bnxt_rx_ring_info* rx_ring; } ;
struct bnxt_cp_ring_info {struct bnxt_napi* bnapi; } ;
struct bnxt {int flags; struct pci_dev* pdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int BNXT_FLAG_CHIP_P5 ; 
 int /*<<< orphan*/  BNXT_RX_PAGE_SIZE ; 
 int /*<<< orphan*/  DMA_ATTR_WEAK_ORDERING ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 size_t FUNC0 (size_t) ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 size_t RX_AGG_CMP_LEN ; 
 size_t RX_AGG_CMP_LEN_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct bnxt*,struct bnxt_rx_ring_info*,size_t,int /*<<< orphan*/ ) ; 
 struct rx_agg_cmp* FUNC4 (struct bnxt*,struct bnxt_cp_ring_info*,size_t,scalar_t__) ; 
 struct rx_agg_cmp* FUNC5 (struct bnxt*,struct bnxt_rx_ring_info*,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct bnxt_cp_ring_info*,size_t,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,scalar_t__,struct page*,int /*<<< orphan*/ ,size_t) ; 
 struct skb_shared_info* FUNC11 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC12(struct bnxt *bp,
				     struct bnxt_cp_ring_info *cpr,
				     struct sk_buff *skb, u16 idx,
				     u32 agg_bufs, bool tpa)
{
	struct bnxt_napi *bnapi = cpr->bnapi;
	struct pci_dev *pdev = bp->pdev;
	struct bnxt_rx_ring_info *rxr = bnapi->rx_ring;
	u16 prod = rxr->rx_agg_prod;
	bool p5_tpa = false;
	u32 i;

	if ((bp->flags & BNXT_FLAG_CHIP_P5) && tpa)
		p5_tpa = true;

	for (i = 0; i < agg_bufs; i++) {
		u16 cons, frag_len;
		struct rx_agg_cmp *agg;
		struct bnxt_sw_rx_agg_bd *cons_rx_buf;
		struct page *page;
		dma_addr_t mapping;

		if (p5_tpa)
			agg = FUNC5(bp, rxr, idx, i);
		else
			agg = FUNC4(bp, cpr, idx, i);
		cons = agg->rx_agg_cmp_opaque;
		frag_len = (FUNC9(agg->rx_agg_cmp_len_flags_type) &
			    RX_AGG_CMP_LEN) >> RX_AGG_CMP_LEN_SHIFT;

		cons_rx_buf = &rxr->rx_agg_ring[cons];
		FUNC10(skb, i, cons_rx_buf->page,
				   cons_rx_buf->offset, frag_len);
		FUNC1(cons, rxr->rx_agg_bmap);

		/* It is possible for bnxt_alloc_rx_page() to allocate
		 * a sw_prod index that equals the cons index, so we
		 * need to clear the cons entry now.
		 */
		mapping = cons_rx_buf->mapping;
		page = cons_rx_buf->page;
		cons_rx_buf->page = NULL;

		if (FUNC3(bp, rxr, prod, GFP_ATOMIC) != 0) {
			struct skb_shared_info *shinfo;
			unsigned int nr_frags;

			shinfo = FUNC11(skb);
			nr_frags = --shinfo->nr_frags;
			FUNC2(&shinfo->frags[nr_frags], NULL);

			FUNC7(skb);

			cons_rx_buf->page = page;

			/* Update prod since possibly some pages have been
			 * allocated already.
			 */
			rxr->rx_agg_prod = prod;
			FUNC6(cpr, idx, i, agg_bufs - i, tpa);
			return NULL;
		}

		FUNC8(&pdev->dev, mapping, BNXT_RX_PAGE_SIZE,
				     PCI_DMA_FROMDEVICE,
				     DMA_ATTR_WEAK_ORDERING);

		skb->data_len += frag_len;
		skb->len += frag_len;
		skb->truesize += PAGE_SIZE;

		prod = FUNC0(prod);
	}
	rxr->rx_agg_prod = prod;
	return skb;
}