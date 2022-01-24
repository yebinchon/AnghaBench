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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct xge_raw_desc {void* m0; void* m1; } ;
struct xge_pdata {struct xge_desc_ring* tx_ring; TYPE_1__* pdev; } ;
struct xge_desc_ring {size_t tail; TYPE_2__* pkt_info; struct xge_raw_desc* raw_desc; } ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {void* pkt_buf; int /*<<< orphan*/  dma_addr; struct sk_buff* skb; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMATXCTRL ; 
 int /*<<< orphan*/  E ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  NEXT_DESC_ADDRH ; 
 int /*<<< orphan*/  NEXT_DESC_ADDRL ; 
 int /*<<< orphan*/  PKT_ADDRH ; 
 int /*<<< orphan*/  PKT_ADDRL ; 
 int /*<<< orphan*/  PKT_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int XGENE_ENET_NUM_DESC ; 
 int /*<<< orphan*/  XGENE_ENET_STD_MTU ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 void* FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct xge_raw_desc*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xge_pdata* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct xge_pdata*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static netdev_tx_t FUNC16(struct sk_buff *skb, struct net_device *ndev)
{
	struct xge_pdata *pdata = FUNC9(ndev);
	struct device *dev = &pdata->pdev->dev;
	struct xge_desc_ring *tx_ring;
	struct xge_raw_desc *raw_desc;
	static dma_addr_t dma_addr;
	u64 addr_lo, addr_hi;
	void *pkt_buf;
	u8 tail;
	u16 len;

	tx_ring = pdata->tx_ring;
	tail = tx_ring->tail;
	len = FUNC11(skb);
	raw_desc = &tx_ring->raw_desc[tail];

	if (!FUNC6(raw_desc)) {
		FUNC10(ndev);
		return NETDEV_TX_BUSY;
	}

	/* Packet buffers should be 64B aligned */
	pkt_buf = FUNC4(dev, XGENE_ENET_STD_MTU, &dma_addr,
				     GFP_ATOMIC);
	if (FUNC13(!pkt_buf)) {
		FUNC3(skb);
		return NETDEV_TX_OK;
	}
	FUNC8(pkt_buf, skb->data, len);

	addr_hi = FUNC0(NEXT_DESC_ADDRH, FUNC7(raw_desc->m1));
	addr_lo = FUNC0(NEXT_DESC_ADDRL, FUNC7(raw_desc->m1));
	raw_desc->m1 = FUNC2(FUNC1(NEXT_DESC_ADDRL, addr_lo) |
				   FUNC1(NEXT_DESC_ADDRH, addr_hi) |
				   FUNC1(PKT_ADDRH,
					    FUNC14(dma_addr)));

	tx_ring->pkt_info[tail].skb = skb;
	tx_ring->pkt_info[tail].dma_addr = dma_addr;
	tx_ring->pkt_info[tail].pkt_buf = pkt_buf;

	FUNC5();

	raw_desc->m0 = FUNC2(FUNC1(PKT_ADDRL, dma_addr) |
				   FUNC1(PKT_SIZE, len) |
				   FUNC1(E, 0));
	FUNC12(skb);
	FUNC15(pdata, DMATXCTRL, 1);

	tx_ring->tail = (tail + 1) & (XGENE_ENET_NUM_DESC - 1);

	return NETDEV_TX_OK;
}