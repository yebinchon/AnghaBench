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
struct xircom_private {int transmit_used; scalar_t__* tx_buffer; int /*<<< orphan*/  lock; struct sk_buff** tx_skb; } ;
struct sk_buff {int len; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int NUMDESCRIPTORS ; 
 int* bufferoffsets ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct xircom_private*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 struct xircom_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct xircom_private*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static netdev_tx_t FUNC10(struct sk_buff *skb,
					   struct net_device *dev)
{
	struct xircom_private *card;
	unsigned long flags;
	int nextdescriptor;
	int desc;

	card = FUNC3(dev);
	FUNC6(&card->lock,flags);

	/* First see if we can free some descriptors */
	for (desc=0;desc<NUMDESCRIPTORS;desc++)
		FUNC1(dev,card,desc,bufferoffsets[desc]);


	nextdescriptor = (card->transmit_used +1) % (NUMDESCRIPTORS);
	desc = card->transmit_used;

	/* only send the packet if the descriptor is free */
	if (card->tx_buffer[4*desc]==0) {
			/* Copy the packet data; zero the memory first as the card
			   sometimes sends more than you ask it to. */

			FUNC2(&card->tx_buffer[bufferoffsets[desc]/4],0,1536);
			FUNC5(skb,
				  &(card->tx_buffer[bufferoffsets[desc] / 4]),
						  skb->len);
			/* FIXME: The specification tells us that the length we send HAS to be a multiple of
			   4 bytes. */

			card->tx_buffer[4*desc+1] = FUNC0(skb->len);
			if (desc == NUMDESCRIPTORS - 1) /* bit 25: last descriptor of the ring */
				card->tx_buffer[4*desc+1] |= FUNC0(1<<25);  

			card->tx_buffer[4*desc+1] |= FUNC0(0xF0000000);
						 /* 0xF0... means want interrupts*/
			card->tx_skb[desc] = skb;

			FUNC9();
			/* This gives the descriptor to the card */
			card->tx_buffer[4*desc] = FUNC0(0x80000000);
			FUNC8(card);
			if (card->tx_buffer[nextdescriptor*4] & FUNC0(0x8000000)) {
				/* next descriptor is occupied... */
				FUNC4(dev);
			}
			card->transmit_used = nextdescriptor;
			FUNC7(&card->lock,flags);
			return NETDEV_TX_OK;
	}

	/* Uh oh... no free descriptor... drop the packet */
	FUNC4(dev);
	FUNC7(&card->lock,flags);
	FUNC8(card);

	return NETDEV_TX_BUSY;
}