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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct page {int dummy; } ;
struct dpaa2_sg_entry {int dummy; } ;
struct dpaa2_eth_priv {int /*<<< orphan*/  iommu_domain; TYPE_2__* net_dev; } ;
struct dpaa2_eth_channel {int buf_count; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_3__ {struct device* parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int DPAA2_ETH_MAX_SG_ENTRIES ; 
 int /*<<< orphan*/  DPAA2_ETH_RX_BUF_RAW_SIZE ; 
 int /*<<< orphan*/  DPAA2_ETH_RX_BUF_SIZE ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct sk_buff* FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dpaa2_sg_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dpaa2_sg_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dpaa2_sg_entry*) ; 
 scalar_t__ FUNC7 (struct dpaa2_sg_entry*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int,struct page*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 
 struct page* FUNC14 (void*) ; 
 struct page* FUNC15 (void*) ; 

__attribute__((used)) static struct sk_buff *FUNC16(struct dpaa2_eth_priv *priv,
				      struct dpaa2_eth_channel *ch,
				      struct dpaa2_sg_entry *sgt)
{
	struct sk_buff *skb = NULL;
	struct device *dev = priv->net_dev->dev.parent;
	void *sg_vaddr;
	dma_addr_t sg_addr;
	u16 sg_offset;
	u32 sg_length;
	struct page *page, *head_page;
	int page_offset;
	int i;

	for (i = 0; i < DPAA2_ETH_MAX_SG_ENTRIES; i++) {
		struct dpaa2_sg_entry *sge = &sgt[i];

		/* NOTE: We only support SG entries in dpaa2_sg_single format,
		 * but this is the only format we may receive from HW anyway
		 */

		/* Get the address and length from the S/G entry */
		sg_addr = FUNC4(sge);
		sg_vaddr = FUNC3(priv->iommu_domain, sg_addr);
		FUNC2(dev, sg_addr, DPAA2_ETH_RX_BUF_SIZE,
			       DMA_BIDIRECTIONAL);

		sg_length = FUNC5(sge);

		if (i == 0) {
			/* We build the skb around the first data buffer */
			skb = FUNC1(sg_vaddr, DPAA2_ETH_RX_BUF_RAW_SIZE);
			if (FUNC13(!skb)) {
				/* Free the first SG entry now, since we already
				 * unmapped it and obtained the virtual address
				 */
				FUNC8((unsigned long)sg_vaddr, 0);

				/* We still need to subtract the buffers used
				 * by this FD from our software counter
				 */
				while (!FUNC7(&sgt[i]) &&
				       i < DPAA2_ETH_MAX_SG_ENTRIES)
					i++;
				break;
			}

			sg_offset = FUNC6(sge);
			FUNC12(skb, sg_offset);
			FUNC11(skb, sg_length);
		} else {
			/* Rest of the data buffers are stored as skb frags */
			page = FUNC15(sg_vaddr);
			head_page = FUNC14(sg_vaddr);

			/* Offset in page (which may be compound).
			 * Data in subsequent SG entries is stored from the
			 * beginning of the buffer, so we don't need to add the
			 * sg_offset.
			 */
			page_offset = ((unsigned long)sg_vaddr &
				(PAGE_SIZE - 1)) +
				(FUNC9(page) - FUNC9(head_page));

			FUNC10(skb, i - 1, head_page, page_offset,
					sg_length, DPAA2_ETH_RX_BUF_SIZE);
		}

		if (FUNC7(sge))
			break;
	}

	FUNC0(i == DPAA2_ETH_MAX_SG_ENTRIES, "Final bit not set in SGT");

	/* Count all data buffers + SG table buffer */
	ch->buf_count -= i + 2;

	return skb;
}