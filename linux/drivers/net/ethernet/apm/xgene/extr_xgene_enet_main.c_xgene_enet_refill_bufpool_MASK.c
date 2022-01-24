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
typedef  int u32 ;
typedef  int u16 ;
struct xgene_enet_raw_desc16 {int /*<<< orphan*/  m1; } ;
struct xgene_enet_pdata {TYPE_1__* ring_ops; } ;
struct xgene_enet_desc_ring {int tail; int slots; struct sk_buff** rx_skb; struct xgene_enet_raw_desc16* raw_desc16; struct net_device* ndev; } ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;
typedef  int dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* wr_cmd ) (struct xgene_enet_desc_ring*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BUFDATALEN ; 
 int BUF_LEN_CODE_2K ; 
 int /*<<< orphan*/  COHERENT ; 
 int /*<<< orphan*/  DATAADDR ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int SKB_BUFFER_SIZE ; 
 int XGENE_ENET_STD_MTU ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct device*,int) ; 
 struct device* FUNC7 (struct net_device*) ; 
 struct sk_buff* FUNC8 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char*) ; 
 struct xgene_enet_pdata* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct xgene_enet_desc_ring*,int) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct xgene_enet_desc_ring *buf_pool,
				     u32 nbuf)
{
	struct sk_buff *skb;
	struct xgene_enet_raw_desc16 *raw_desc;
	struct xgene_enet_pdata *pdata;
	struct net_device *ndev;
	struct device *dev;
	dma_addr_t dma_addr;
	u32 tail = buf_pool->tail;
	u32 slots = buf_pool->slots - 1;
	u16 bufdatalen, len;
	int i;

	ndev = buf_pool->ndev;
	dev = FUNC7(buf_pool->ndev);
	pdata = FUNC10(ndev);

	bufdatalen = BUF_LEN_CODE_2K | (SKB_BUFFER_SIZE & FUNC0(11, 0));
	len = XGENE_ENET_STD_MTU;

	for (i = 0; i < nbuf; i++) {
		raw_desc = &buf_pool->raw_desc16[tail];

		skb = FUNC8(ndev, len);
		if (FUNC12(!skb))
			return -ENOMEM;

		dma_addr = FUNC5(dev, skb->data, len, DMA_FROM_DEVICE);
		if (FUNC6(dev, dma_addr)) {
			FUNC9(ndev, "DMA mapping error\n");
			FUNC4(skb);
			return -EINVAL;
		}

		buf_pool->rx_skb[tail] = skb;

		raw_desc->m1 = FUNC3(FUNC2(DATAADDR, dma_addr) |
					   FUNC2(BUFDATALEN, bufdatalen) |
					   FUNC1(COHERENT));
		tail = (tail + 1) & slots;
	}

	pdata->ring_ops->wr_cmd(buf_pool, nbuf);
	buf_pool->tail = tail;

	return 0;
}