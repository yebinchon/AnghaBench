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
typedef  size_t u8 ;
typedef  int u64 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct xge_raw_desc {void* m0; void* m1; } ;
struct xge_pdata {TYPE_1__* pdev; struct xge_desc_ring* rx_ring; } ;
struct xge_desc_ring {size_t tail; TYPE_2__* pkt_info; struct xge_raw_desc* raw_desc; } ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;
typedef  int dma_addr_t ;
struct TYPE_4__ {int dma_addr; struct sk_buff* skb; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  E ; 
 int EINVAL ; 
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NEXT_DESC_ADDRH ; 
 int /*<<< orphan*/  NEXT_DESC_ADDRL ; 
 int /*<<< orphan*/  PKT_ADDRH ; 
 int /*<<< orphan*/  PKT_ADDRL ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 size_t XGENE_ENET_NUM_DESC ; 
 int /*<<< orphan*/  XGENE_ENET_STD_MTU ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 struct sk_buff* FUNC8 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char*) ; 
 struct xge_pdata* FUNC10 (struct net_device*) ; 
 scalar_t__ FUNC11 (int) ; 
 int FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct net_device *ndev, u32 nbuf)
{
	struct xge_pdata *pdata = FUNC10(ndev);
	struct xge_desc_ring *ring = pdata->rx_ring;
	const u8 slots = XGENE_ENET_NUM_DESC - 1;
	struct device *dev = &pdata->pdev->dev;
	struct xge_raw_desc *raw_desc;
	u64 addr_lo, addr_hi;
	u8 tail = ring->tail;
	struct sk_buff *skb;
	dma_addr_t dma_addr;
	u16 len;
	int i;

	for (i = 0; i < nbuf; i++) {
		raw_desc = &ring->raw_desc[tail];

		len = XGENE_ENET_STD_MTU;
		skb = FUNC8(ndev, len);
		if (FUNC11(!skb))
			return -ENOMEM;

		dma_addr = FUNC4(dev, skb->data, len, DMA_FROM_DEVICE);
		if (FUNC5(dev, dma_addr)) {
			FUNC9(ndev, "DMA mapping error\n");
			FUNC3(skb);
			return -EINVAL;
		}

		ring->pkt_info[tail].skb = skb;
		ring->pkt_info[tail].dma_addr = dma_addr;

		addr_hi = FUNC0(NEXT_DESC_ADDRH, FUNC7(raw_desc->m1));
		addr_lo = FUNC0(NEXT_DESC_ADDRL, FUNC7(raw_desc->m1));
		raw_desc->m1 = FUNC2(FUNC1(NEXT_DESC_ADDRL, addr_lo) |
					   FUNC1(NEXT_DESC_ADDRH, addr_hi) |
					   FUNC1(PKT_ADDRH,
						    FUNC12(dma_addr)));

		FUNC6();
		raw_desc->m0 = FUNC2(FUNC1(PKT_ADDRL, dma_addr) |
					   FUNC1(E, 1));
		tail = (tail + 1) & slots;
	}

	ring->tail = tail;

	return 0;
}