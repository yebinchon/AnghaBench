#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct sk_buff {scalar_t__ cb; scalar_t__ data; } ;
struct page {int dummy; } ;
struct octeon_skb_page_info {int /*<<< orphan*/  dma; scalar_t__ page_offset; struct page* page; } ;
struct octeon_device {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ MIN_SKB_SIZE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ SKB_ADJ ; 
 unsigned long SKB_ADJ_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static inline void
*FUNC8(struct octeon_device *oct,
		   struct octeon_skb_page_info *pg_info)
{
	struct page *page;
	struct sk_buff *skb;
	struct octeon_skb_page_info *skb_pg_info;

	page = FUNC1(GFP_ATOMIC);
	if (FUNC7(!page))
		return NULL;

	skb = FUNC2(MIN_SKB_SIZE + SKB_ADJ);
	if (FUNC7(!skb)) {
		FUNC0(page);
		pg_info->page = NULL;
		return NULL;
	}

	if ((unsigned long)skb->data & SKB_ADJ_MASK) {
		u32 r = SKB_ADJ - ((unsigned long)skb->data & SKB_ADJ_MASK);

		FUNC6(skb, r);
	}

	skb_pg_info = ((struct octeon_skb_page_info *)(skb->cb));
	/* Get DMA info */
	pg_info->dma = FUNC4(&oct->pci_dev->dev, page, 0,
				    PAGE_SIZE, DMA_FROM_DEVICE);

	/* Mapping failed!! */
	if (FUNC5(&oct->pci_dev->dev, pg_info->dma)) {
		FUNC0(page);
		FUNC3((struct sk_buff *)skb);
		pg_info->page = NULL;
		return NULL;
	}

	pg_info->page = page;
	pg_info->page_offset = 0;
	skb_pg_info->page = page;
	skb_pg_info->page_offset = 0;
	skb_pg_info->dma = pg_info->dma;

	return (void *)skb;
}