#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct TYPE_10__ {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {TYPE_5__ stats; } ;
struct ag71xx_ring {int curr; int dirty; scalar_t__ desc_split; TYPE_3__* buf; int /*<<< orphan*/  order; } ;
struct ag71xx_desc {int /*<<< orphan*/  ctrl; } ;
struct ag71xx {TYPE_4__* pdev; TYPE_1__* dcfg; struct ag71xx_ring tx_ring; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int len; struct sk_buff* skb; } ;
struct TYPE_8__ {TYPE_2__ tx; } ;
struct TYPE_6__ {int desc_pktlen_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_REG_TX_CTRL ; 
 int AG71XX_TX_RING_DS_PER_PKT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DESC_EMPTY ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  TX_CTRL_TXE ; 
 int FUNC1 (struct ag71xx_ring*,int /*<<< orphan*/ ,int) ; 
 struct ag71xx_desc* FUNC2 (struct ag71xx_ring*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ag71xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ) ; 
 struct ag71xx* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ag71xx*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  tx_err ; 
 int /*<<< orphan*/  tx_queued ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static netdev_tx_t FUNC13(struct sk_buff *skb,
					  struct net_device *ndev)
{
	int i, n, ring_min, ring_mask, ring_size;
	struct ag71xx *ag = FUNC7(ndev);
	struct ag71xx_ring *ring;
	struct ag71xx_desc *desc;
	dma_addr_t dma_addr;

	ring = &ag->tx_ring;
	ring_mask = FUNC0(ring->order) - 1;
	ring_size = FUNC0(ring->order);

	if (skb->len <= 4) {
		FUNC9(ag, tx_err, ndev, "packet len is too small\n");
		goto err_drop;
	}

	dma_addr = FUNC5(&ag->pdev->dev, skb->data, skb->len,
				  DMA_TO_DEVICE);

	i = ring->curr & ring_mask;
	desc = FUNC2(ring, i);

	/* setup descriptor fields */
	n = FUNC1(ring, (u32)dma_addr,
				 skb->len & ag->dcfg->desc_pktlen_mask);
	if (n < 0)
		goto err_drop_unmap;

	i = (ring->curr + n - 1) & ring_mask;
	ring->buf[i].tx.len = skb->len;
	ring->buf[i].tx.skb = skb;

	FUNC8(ndev, skb->len);

	FUNC11(skb);

	desc->ctrl &= ~DESC_EMPTY;
	ring->curr += n;

	/* flush descriptor */
	FUNC12();

	ring_min = 2;
	if (ring->desc_split)
		ring_min *= AG71XX_TX_RING_DS_PER_PKT;

	if (ring->curr - ring->dirty >= ring_size - ring_min) {
		FUNC9(ag, tx_err, ndev, "tx queue full\n");
		FUNC10(ndev);
	}

	FUNC9(ag, tx_queued, ndev, "packet injected into TX queue\n");

	/* enable TX engine */
	FUNC3(ag, AG71XX_REG_TX_CTRL, TX_CTRL_TXE);

	return NETDEV_TX_OK;

err_drop_unmap:
	FUNC6(&ag->pdev->dev, dma_addr, skb->len, DMA_TO_DEVICE);

err_drop:
	ndev->stats.tx_dropped++;

	FUNC4(skb);
	return NETDEV_TX_OK;
}