#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u32 ;
struct sk_buff {unsigned int len; int /*<<< orphan*/  data; } ;
struct page {int dummy; } ;
struct netcp_intf {int /*<<< orphan*/  ndev_dev; int /*<<< orphan*/  tx_pool; struct device* dev; } ;
struct knav_dma_desc {scalar_t__ desc_info; scalar_t__ next_desc; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_3__ {int nr_frags; scalar_t__ frag_list; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ FUNC0 (struct knav_dma_desc*) ; 
 unsigned int KNAV_DMA_DESC_PKT_LEN_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (struct device*,struct page*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct device*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 struct knav_dma_desc* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct knav_dma_desc*,int,scalar_t__*,unsigned int*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,struct knav_dma_desc*) ; 
 int /*<<< orphan*/  FUNC12 (struct netcp_intf*,struct knav_dma_desc*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,unsigned int,int /*<<< orphan*/ ,struct knav_dma_desc*) ; 
 int /*<<< orphan*/  FUNC15 (unsigned int*,int,scalar_t__*) ; 
 unsigned int FUNC16 (int /*<<< orphan*/ *) ; 
 struct page* FUNC17 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC18 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC19 (struct sk_buff*) ; 
 scalar_t__ FUNC20 (struct sk_buff*) ; 
 TYPE_1__* FUNC21 (struct sk_buff*) ; 
 scalar_t__ FUNC22 (int) ; 

__attribute__((used)) static struct knav_dma_desc*
FUNC23(struct sk_buff *skb, struct netcp_intf *netcp)
{
	struct knav_dma_desc *desc, *ndesc, *pdesc;
	unsigned int pkt_len = FUNC19(skb);
	struct device *dev = netcp->dev;
	dma_addr_t dma_addr;
	unsigned int dma_sz;
	int i;

	/* Map the linear buffer */
	dma_addr = FUNC5(dev, skb->data, pkt_len, DMA_TO_DEVICE);
	if (FUNC22(FUNC6(dev, dma_addr))) {
		FUNC2(netcp->ndev_dev, "Failed to map skb buffer\n");
		return NULL;
	}

	desc = FUNC9(netcp->tx_pool);
	if (FUNC0(desc)) {
		FUNC2(netcp->ndev_dev, "out of TX desc\n");
		FUNC8(dev, dma_addr, pkt_len, DMA_TO_DEVICE);
		return NULL;
	}

	FUNC14(dma_addr, pkt_len, 0, desc);
	if (FUNC20(skb)) {
		FUNC13(FUNC21(skb));
	} else {
		desc->next_desc = 0;
		goto upd_pkt_len;
	}

	pdesc = desc;

	/* Handle the case where skb is fragmented in pages */
	for (i = 0; i < FUNC21(skb)->nr_frags; i++) {
		skb_frag_t *frag = &FUNC21(skb)->frags[i];
		struct page *page = FUNC17(frag);
		u32 page_offset = FUNC16(frag);
		u32 buf_len = FUNC18(frag);
		dma_addr_t desc_dma;
		u32 desc_dma_32;

		dma_addr = FUNC4(dev, page, page_offset, buf_len,
					DMA_TO_DEVICE);
		if (FUNC22(!dma_addr)) {
			FUNC2(netcp->ndev_dev, "Failed to map skb page\n");
			goto free_descs;
		}

		ndesc = FUNC9(netcp->tx_pool);
		if (FUNC0(ndesc)) {
			FUNC2(netcp->ndev_dev, "out of TX desc for frags\n");
			FUNC7(dev, dma_addr, buf_len, DMA_TO_DEVICE);
			goto free_descs;
		}

		desc_dma = FUNC11(netcp->tx_pool, ndesc);
		FUNC14(dma_addr, buf_len, 0, ndesc);
		desc_dma_32 = (u32)desc_dma;
		FUNC15(&desc_dma_32, 1, &pdesc->next_desc);
		pkt_len += buf_len;
		if (pdesc != desc)
			FUNC10(netcp->tx_pool, pdesc,
					   sizeof(*pdesc), &desc_dma, &dma_sz);
		pdesc = ndesc;
	}
	if (pdesc != desc)
		FUNC10(netcp->tx_pool, pdesc, sizeof(*pdesc),
				   &dma_addr, &dma_sz);

	/* frag list based linkage is not supported for now. */
	if (FUNC21(skb)->frag_list) {
		FUNC3(netcp->ndev_dev, "NETIF_F_FRAGLIST not supported\n");
		goto free_descs;
	}

upd_pkt_len:
	FUNC1(pkt_len != skb->len);

	pkt_len &= KNAV_DMA_DESC_PKT_LEN_MASK;
	FUNC15(&pkt_len, 1, &desc->desc_info);
	return desc;

free_descs:
	FUNC12(netcp, desc, sizeof(*desc));
	return NULL;
}