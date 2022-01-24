#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {TYPE_3__ dev; TYPE_1__ stats; } ;
struct ep93xx_tdesc {int tdesc1; int /*<<< orphan*/  buf_addr; } ;
struct ep93xx_priv {int tx_pointer; int tx_pending; int /*<<< orphan*/  tx_pending_lock; int /*<<< orphan*/ * tx_buf; TYPE_2__* descs; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_5__ {struct ep93xx_tdesc* tdesc; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int MAX_PKT_SIZE ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  REG_TXDENQ ; 
 int TDESC1_EOF ; 
 int TX_QUEUE_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct ep93xx_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct ep93xx_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static netdev_tx_t FUNC10(struct sk_buff *skb, struct net_device *dev)
{
	struct ep93xx_priv *ep = FUNC3(dev);
	struct ep93xx_tdesc *txd;
	int entry;

	if (FUNC8(skb->len > MAX_PKT_SIZE)) {
		dev->stats.tx_dropped++;
		FUNC0(skb);
		return NETDEV_TX_OK;
	}

	entry = ep->tx_pointer;
	ep->tx_pointer = (ep->tx_pointer + 1) & (TX_QUEUE_ENTRIES - 1);

	txd = &ep->descs->tdesc[entry];

	txd->tdesc1 = TDESC1_EOF | (entry << 16) | (skb->len & 0xfff);
	FUNC1(dev->dev.parent, txd->buf_addr, skb->len,
				DMA_TO_DEVICE);
	FUNC5(skb, ep->tx_buf[entry]);
	FUNC2(dev->dev.parent, txd->buf_addr, skb->len,
				   DMA_TO_DEVICE);
	FUNC0(skb);

	FUNC6(&ep->tx_pending_lock);
	ep->tx_pending++;
	if (ep->tx_pending == TX_QUEUE_ENTRIES)
		FUNC4(dev);
	FUNC7(&ep->tx_pending_lock);

	FUNC9(ep, REG_TXDENQ, 1);

	return NETDEV_TX_OK;
}