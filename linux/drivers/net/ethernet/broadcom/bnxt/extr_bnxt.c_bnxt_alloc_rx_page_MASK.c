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
typedef  size_t u16 ;
struct rx_bd {size_t rx_bd_opaque; int /*<<< orphan*/  rx_bd_haddr; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct page {int dummy; } ;
struct bnxt_sw_rx_agg_bd {unsigned int offset; int /*<<< orphan*/  mapping; struct page* page; } ;
struct bnxt_rx_ring_info {size_t rx_sw_agg_prod; unsigned int rx_page_offset; struct bnxt_sw_rx_agg_bd* rx_agg_ring; int /*<<< orphan*/  rx_agg_bmap; struct page* rx_page; struct rx_bd** rx_agg_desc_ring; } ;
struct bnxt {struct pci_dev* pdev; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 scalar_t__ BNXT_RX_PAGE_SIZE ; 
 int /*<<< orphan*/  DMA_ATTR_WEAK_ORDERING ; 
 int EIO ; 
 int ENOMEM ; 
 size_t FUNC0 (size_t) ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 size_t FUNC1 (size_t) ; 
 size_t FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 struct page* FUNC5 (int /*<<< orphan*/ ) ; 
 size_t FUNC6 (struct bnxt_rx_ring_info*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct page*,unsigned int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC13(struct bnxt *bp,
				     struct bnxt_rx_ring_info *rxr,
				     u16 prod, gfp_t gfp)
{
	struct rx_bd *rxbd =
		&rxr->rx_agg_desc_ring[FUNC2(prod)][FUNC1(prod)];
	struct bnxt_sw_rx_agg_bd *rx_agg_buf;
	struct pci_dev *pdev = bp->pdev;
	struct page *page;
	dma_addr_t mapping;
	u16 sw_prod = rxr->rx_sw_agg_prod;
	unsigned int offset = 0;

	if (PAGE_SIZE > BNXT_RX_PAGE_SIZE) {
		page = rxr->rx_page;
		if (!page) {
			page = FUNC5(gfp);
			if (!page)
				return -ENOMEM;
			rxr->rx_page = page;
			rxr->rx_page_offset = 0;
		}
		offset = rxr->rx_page_offset;
		rxr->rx_page_offset += BNXT_RX_PAGE_SIZE;
		if (rxr->rx_page_offset == PAGE_SIZE)
			rxr->rx_page = NULL;
		else
			FUNC10(page);
	} else {
		page = FUNC5(gfp);
		if (!page)
			return -ENOMEM;
	}

	mapping = FUNC8(&pdev->dev, page, offset,
				     BNXT_RX_PAGE_SIZE, PCI_DMA_FROMDEVICE,
				     DMA_ATTR_WEAK_ORDERING);
	if (FUNC9(&pdev->dev, mapping)) {
		FUNC3(page);
		return -EIO;
	}

	if (FUNC12(FUNC11(sw_prod, rxr->rx_agg_bmap)))
		sw_prod = FUNC6(rxr, sw_prod);

	FUNC4(sw_prod, rxr->rx_agg_bmap);
	rx_agg_buf = &rxr->rx_agg_ring[sw_prod];
	rxr->rx_sw_agg_prod = FUNC0(sw_prod);

	rx_agg_buf->page = page;
	rx_agg_buf->offset = offset;
	rx_agg_buf->mapping = mapping;
	rxbd->rx_bd_haddr = FUNC7(mapping);
	rxbd->rx_bd_opaque = sw_prod;
	return 0;
}