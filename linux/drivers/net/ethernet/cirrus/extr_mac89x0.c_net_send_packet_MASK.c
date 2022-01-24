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
struct sk_buff {int* data; scalar_t__ len; } ;
struct net_local {scalar_t__ send_cmd; } ;
struct net_device {scalar_t__ mem_start; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 size_t ETH_ALEN ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  PP_BusST ; 
 int /*<<< orphan*/  PP_TxCMD ; 
 scalar_t__ PP_TxFrame ; 
 int /*<<< orphan*/  PP_TxLength ; 
 int READY_FOR_TX_NOW ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 struct net_local* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_local*,int /*<<< orphan*/ ,struct net_device*,char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int FUNC6 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,void*,scalar_t__) ; 
 int /*<<< orphan*/  tx_queued ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static netdev_tx_t
FUNC9(struct sk_buff *skb, struct net_device *dev)
{
	struct net_local *lp = FUNC3(dev);
	unsigned long flags;

	FUNC4(lp, tx_queued, dev, "sent %d byte packet of type %x\n",
		  skb->len, skb->data[ETH_ALEN + ETH_ALEN] << 8 |
		  skb->data[ETH_ALEN + ETH_ALEN + 1]);

	/* keep the upload from being interrupted, since we
	   ask the chip to start transmitting before the
	   whole packet has been completely uploaded. */
	FUNC2(flags);
	FUNC5(dev);

	/* initiate a transmit sequence */
	FUNC8(dev, PP_TxCMD, lp->send_cmd);
	FUNC8(dev, PP_TxLength, skb->len);

	/* Test to see if the chip has allocated memory for the packet */
	if ((FUNC6(dev, PP_BusST) & READY_FOR_TX_NOW) == 0) {
		/* Gasp!  It hasn't.  But that shouldn't happen since
		   we're waiting for TxOk, so return 1 and requeue this packet. */
		FUNC1(flags);
		return NETDEV_TX_BUSY;
	}

	/* Write the contents of the packet */
	FUNC7(skb, (void *)(dev->mem_start + PP_TxFrame),
				  skb->len+1);

	FUNC1(flags);
	FUNC0 (skb);

	return NETDEV_TX_OK;
}