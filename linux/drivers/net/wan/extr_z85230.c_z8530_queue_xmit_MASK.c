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
struct z8530_channel {size_t tx_dma_used; int /*<<< orphan*/  lock; struct sk_buff* tx_next_skb; scalar_t__ tx_next_ptr; scalar_t__* tx_dma_buf; scalar_t__ dma_tx; int /*<<< orphan*/  netdevice; } ;
struct sk_buff {scalar_t__ data; scalar_t__ len; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  RT_LOCK ; 
 int /*<<< orphan*/  RT_UNLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct z8530_channel*) ; 

netdev_tx_t FUNC7(struct z8530_channel *c, struct sk_buff *skb)
{
	unsigned long flags;
	
	FUNC0(c->netdevice);
	if(c->tx_next_skb)
		return NETDEV_TX_BUSY;

	
	/* PC SPECIFIC - DMA limits */
	
	/*
	 *	If we will DMA the transmit and its gone over the ISA bus
	 *	limit, then copy to the flip buffer
	 */
	 
	if(c->dma_tx && ((unsigned long)(FUNC5(skb->data+skb->len))>=16*1024*1024 || FUNC2(skb)))
	{
		/* 
		 *	Send the flip buffer, and flip the flippy bit.
		 *	We don't care which is used when just so long as
		 *	we never use the same buffer twice in a row. Since
		 *	only one buffer can be going out at a time the other
		 *	has to be safe.
		 */
		c->tx_next_ptr=c->tx_dma_buf[c->tx_dma_used];
		c->tx_dma_used^=1;	/* Flip temp buffer */
		FUNC1(skb, c->tx_next_ptr, skb->len);
	}
	else
		c->tx_next_ptr=skb->data;	
	RT_LOCK;
	c->tx_next_skb=skb;
	RT_UNLOCK;
	
	FUNC3(c->lock, flags);
	FUNC6(c);
	FUNC4(c->lock, flags);
	
	return NETDEV_TX_OK;
}