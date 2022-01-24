#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  unsigned long u32 ;
struct sk_buff {int len; scalar_t__ data; int /*<<< orphan*/  head; } ;
struct net_device {int dummy; } ;
struct dnet {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 unsigned int DNET_FIFO_SIZE ; 
 scalar_t__ DNET_FIFO_TX_DATA_AF_TH ; 
 unsigned long DNET_INTR_ENB_TX_FIFOAE ; 
 int /*<<< orphan*/  INTR_ENB ; 
 int /*<<< orphan*/  INTR_SRC ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  TX_DATA_FIFO ; 
 int /*<<< orphan*/  TX_FIFO_WCNT ; 
 int /*<<< orphan*/  TX_LEN_FIFO ; 
 int /*<<< orphan*/  TX_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct dnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dnet*,unsigned long,int /*<<< orphan*/ ) ; 
 struct dnet* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static netdev_tx_t FUNC10(struct sk_buff *skb, struct net_device *dev)
{

	struct dnet *bp = FUNC4(dev);
	u32 tx_status, irq_enable;
	unsigned int len, i, tx_cmd, wrsz;
	unsigned long flags;
	unsigned int *bufp;

	tx_status = FUNC2(bp, TX_STATUS);

	FUNC6("start_xmit: len %u head %p data %p\n",
	       skb->len, skb->head, skb->data);
	FUNC1(skb);

	/* frame size (words) */
	len = (skb->len + 3) >> 2;

	FUNC8(&bp->lock, flags);

	tx_status = FUNC2(bp, TX_STATUS);

	bufp = (unsigned int *)(((unsigned long) skb->data) & ~0x3UL);
	wrsz = (u32) skb->len + 3;
	wrsz += ((unsigned long) skb->data) & 0x3;
	wrsz >>= 2;
	tx_cmd = ((((unsigned long)(skb->data)) & 0x03) << 16) | (u32) skb->len;

	/* check if there is enough room for the current frame */
	if (wrsz < (DNET_FIFO_SIZE - FUNC2(bp, TX_FIFO_WCNT))) {
		for (i = 0; i < wrsz; i++)
			FUNC3(bp, *bufp++, TX_DATA_FIFO);

		/*
		 * inform MAC that a packet's written and ready to be
		 * shipped out
		 */
		FUNC3(bp, tx_cmd, TX_LEN_FIFO);
	}

	if (FUNC2(bp, TX_FIFO_WCNT) > DNET_FIFO_TX_DATA_AF_TH) {
		FUNC5(dev);
		tx_status = FUNC2(bp, INTR_SRC);
		irq_enable = FUNC2(bp, INTR_ENB);
		irq_enable |= DNET_INTR_ENB_TX_FIFOAE;
		FUNC3(bp, irq_enable, INTR_ENB);
	}

	FUNC7(skb);

	/* free the buffer */
	FUNC0(skb);

	FUNC9(&bp->lock, flags);

	return NETDEV_TX_OK;
}