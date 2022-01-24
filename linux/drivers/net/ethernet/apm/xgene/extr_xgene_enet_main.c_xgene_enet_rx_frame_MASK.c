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
typedef  int u8 ;
typedef  size_t u32 ;
typedef  size_t u16 ;
struct xgene_enet_raw_desc {int /*<<< orphan*/  m0; int /*<<< orphan*/  m1; } ;
struct xgene_enet_pdata {int /*<<< orphan*/  vlan_rjbr; int /*<<< orphan*/  false_rflr; } ;
struct xgene_enet_desc_ring {size_t slots; size_t head; scalar_t__ npagepool; scalar_t__ nbufpool; int /*<<< orphan*/  napi; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; struct page** frag_page; int /*<<< orphan*/  rx_dropped; struct sk_buff** rx_skb; struct xgene_enet_desc_ring* page_pool; struct xgene_enet_desc_ring* buf_pool; struct net_device* ndev; } ;
struct sk_buff {int /*<<< orphan*/  protocol; scalar_t__ data; } ;
struct page {int dummy; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;
typedef  int dma_addr_t ;
typedef  int /*<<< orphan*/  __le64 ;
struct TYPE_2__ {scalar_t__ nr_frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATAADDR ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  ELERR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LERR ; 
 int LERR_LEN ; 
 scalar_t__ NET_IP_ALIGN ; 
 scalar_t__ NUM_BUFPOOL ; 
 scalar_t__ NUM_NXTBUFPOOL ; 
 int /*<<< orphan*/  NV ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  USERINFO ; 
 int /*<<< orphan*/  XGENE_ENET_STD_MTU ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct device* FUNC7 (struct net_device*) ; 
 struct xgene_enet_pdata* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,scalar_t__,struct page*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,size_t) ; 
 TYPE_1__* FUNC13 (struct sk_buff*) ; 
 scalar_t__ FUNC14 (int) ; 
 scalar_t__ FUNC15 (struct sk_buff*,size_t,int) ; 
 scalar_t__ FUNC16 (struct sk_buff*,size_t,int) ; 
 int /*<<< orphan*/  FUNC17 (struct xgene_enet_desc_ring*,struct xgene_enet_raw_desc*,struct xgene_enet_raw_desc*) ; 
 size_t FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct xgene_enet_desc_ring*,int) ; 
 int FUNC20 (struct xgene_enet_desc_ring*,scalar_t__) ; 
 int FUNC21 (struct xgene_enet_desc_ring*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC23(struct xgene_enet_desc_ring *rx_ring,
			       struct xgene_enet_raw_desc *raw_desc,
			       struct xgene_enet_raw_desc *exp_desc)
{
	struct xgene_enet_desc_ring *buf_pool, *page_pool;
	u32 datalen, frag_size, skb_index;
	struct xgene_enet_pdata *pdata;
	struct net_device *ndev;
	dma_addr_t dma_addr;
	struct sk_buff *skb;
	struct device *dev;
	struct page *page;
	u16 slots, head;
	int i, ret = 0;
	__le64 *desc;
	u8 status;
	bool nv;

	ndev = rx_ring->ndev;
	pdata = FUNC8(ndev);
	dev = FUNC7(rx_ring->ndev);
	buf_pool = rx_ring->buf_pool;
	page_pool = rx_ring->page_pool;

	FUNC3(dev, FUNC0(DATAADDR, FUNC5(raw_desc->m1)),
			 XGENE_ENET_STD_MTU, DMA_FROM_DEVICE);
	skb_index = FUNC0(USERINFO, FUNC5(raw_desc->m0));
	skb = buf_pool->rx_skb[skb_index];
	buf_pool->rx_skb[skb_index] = NULL;

	datalen = FUNC18(FUNC5(raw_desc->m1));
	FUNC12(skb, datalen);
	FUNC9(skb->data - NET_IP_ALIGN);
	skb->protocol = FUNC4(skb, ndev);

	/* checking for error */
	status = (FUNC0(ELERR, FUNC5(raw_desc->m0)) << LERR_LEN) |
		  FUNC0(LERR, FUNC5(raw_desc->m0));
	if (FUNC14(status)) {
		if (FUNC16(skb, datalen, status)) {
			pdata->false_rflr++;
		} else if (FUNC15(skb, datalen, status)) {
			pdata->vlan_rjbr++;
		} else {
			FUNC1(skb);
			FUNC17(page_pool, raw_desc, exp_desc);
			FUNC19(rx_ring, status);
			rx_ring->rx_dropped++;
			goto out;
		}
	}

	nv = FUNC0(NV, FUNC5(raw_desc->m0));
	if (!nv) {
		/* strip off CRC as HW isn't doing this */
		datalen -= 4;
		goto skip_jumbo;
	}

	slots = page_pool->slots - 1;
	head = page_pool->head;
	desc = (void *)exp_desc;

	for (i = 0; i < 4; i++) {
		frag_size = FUNC18(FUNC5(desc[i ^ 1]));
		if (!frag_size)
			break;

		dma_addr = FUNC0(DATAADDR, FUNC5(desc[i ^ 1]));
		FUNC2(dev, dma_addr, PAGE_SIZE, DMA_FROM_DEVICE);

		page = page_pool->frag_page[head];
		FUNC10(skb, FUNC13(skb)->nr_frags, page, 0,
				frag_size, PAGE_SIZE);

		datalen += frag_size;

		page_pool->frag_page[head] = NULL;
		head = (head + 1) & slots;
	}

	page_pool->head = head;
	rx_ring->npagepool -= FUNC13(skb)->nr_frags;

skip_jumbo:
	FUNC11(skb);
	FUNC22(skb);

	rx_ring->rx_packets++;
	rx_ring->rx_bytes += datalen;
	FUNC6(&rx_ring->napi, skb);

out:
	if (rx_ring->npagepool <= 0) {
		ret = FUNC21(page_pool, NUM_NXTBUFPOOL);
		rx_ring->npagepool = NUM_NXTBUFPOOL;
		if (ret)
			return ret;
	}

	if (--rx_ring->nbufpool == 0) {
		ret = FUNC20(buf_pool, NUM_BUFPOOL);
		rx_ring->nbufpool = NUM_BUFPOOL;
	}

	return ret;
}