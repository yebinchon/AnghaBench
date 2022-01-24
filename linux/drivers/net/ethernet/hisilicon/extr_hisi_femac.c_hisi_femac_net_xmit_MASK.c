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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {scalar_t__ tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  tx_fifo_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct hisi_femac_queue {size_t head; int num; struct sk_buff** skb; scalar_t__* dma_phys; int /*<<< orphan*/  tail; } ;
struct hisi_femac_priv {int /*<<< orphan*/  tx_fifo_used_cnt; scalar_t__ port_base; int /*<<< orphan*/  dev; struct hisi_femac_queue txq; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 scalar_t__ ADDRQ_STAT ; 
 int /*<<< orphan*/  BIT_TX_READY ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ EQFRM_LEN ; 
 scalar_t__ EQ_ADDR ; 
 scalar_t__ ETH_FCS_LEN ; 
 int /*<<< orphan*/  IRQ_INT_TX_PER_PACKET ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct hisi_femac_priv*,int /*<<< orphan*/ ) ; 
 struct hisi_femac_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static netdev_tx_t FUNC11(struct sk_buff *skb,
				       struct net_device *dev)
{
	struct hisi_femac_priv *priv = FUNC5(dev);
	struct hisi_femac_queue *txq = &priv->txq;
	dma_addr_t addr;
	u32 val;

	val = FUNC8(priv->port_base + ADDRQ_STAT);
	val &= BIT_TX_READY;
	if (!val) {
		FUNC4(priv, IRQ_INT_TX_PER_PACKET);
		dev->stats.tx_dropped++;
		dev->stats.tx_fifo_errors++;
		FUNC7(dev);
		return NETDEV_TX_BUSY;
	}

	if (FUNC9(!FUNC0(txq->head, txq->tail,
				 txq->num))) {
		FUNC4(priv, IRQ_INT_TX_PER_PACKET);
		dev->stats.tx_dropped++;
		dev->stats.tx_fifo_errors++;
		FUNC7(dev);
		return NETDEV_TX_BUSY;
	}

	addr = FUNC2(priv->dev, skb->data,
			      skb->len, DMA_TO_DEVICE);
	if (FUNC9(FUNC3(priv->dev, addr))) {
		FUNC1(skb);
		dev->stats.tx_dropped++;
		return NETDEV_TX_OK;
	}
	txq->dma_phys[txq->head] = addr;

	txq->skb[txq->head] = skb;
	txq->head = (txq->head + 1) % txq->num;

	FUNC10(addr, priv->port_base + EQ_ADDR);
	FUNC10(skb->len + ETH_FCS_LEN, priv->port_base + EQFRM_LEN);

	priv->tx_fifo_used_cnt++;

	dev->stats.tx_packets++;
	dev->stats.tx_bytes += skb->len;
	FUNC6(dev, skb->len);

	return NETDEV_TX_OK;
}