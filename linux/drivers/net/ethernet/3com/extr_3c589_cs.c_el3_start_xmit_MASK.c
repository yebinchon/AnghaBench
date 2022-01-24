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
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int tx_bytes; } ;
struct net_device {unsigned int base_addr; TYPE_1__ stats; } ;
struct el3_private {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 scalar_t__ EL3_CMD ; 
 scalar_t__ EL3_STATUS ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int SetTxThreshold ; 
 scalar_t__ TX_FIFO ; 
 scalar_t__ TX_FREE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,long,int) ; 
 struct el3_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static netdev_tx_t FUNC10(struct sk_buff *skb,
					struct net_device *dev)
{
	unsigned int ioaddr = dev->base_addr;
	struct el3_private *priv = FUNC3(dev);
	unsigned long flags;

	FUNC2(dev, "el3_start_xmit(length = %ld) called, status %4.4x.\n",
	       (long)skb->len, FUNC1(ioaddr + EL3_STATUS));

	FUNC8(&priv->lock, flags);

	dev->stats.tx_bytes += skb->len;

	/* Put out the doubleword header... */
	FUNC6(skb->len, ioaddr + TX_FIFO);
	FUNC6(0x00, ioaddr + TX_FIFO);
	/* ... and the packet rounded to a doubleword. */
	FUNC5(ioaddr + TX_FIFO, skb->data, (skb->len + 3) >> 2);

	if (FUNC1(ioaddr + TX_FREE) <= 1536) {
		FUNC4(dev);
		/* Interrupt us when the FIFO has room for max-sized packet. */
		FUNC6(SetTxThreshold + 1536, ioaddr + EL3_CMD);
	}

	FUNC7(dev);
	FUNC9(&priv->lock, flags);
	FUNC0(skb);

	return NETDEV_TX_OK;
}