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
struct net_device {unsigned int base_addr; TYPE_1__ stats; int /*<<< orphan*/  name; } ;
struct el3_private {int /*<<< orphan*/  window_lock; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 scalar_t__ EL3_CMD ; 
 scalar_t__ EL3_STATUS ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int SetTxThreshold ; 
 scalar_t__ TX_FIFO ; 
 scalar_t__ TxFree ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (scalar_t__) ; 
 struct el3_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,long,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static netdev_tx_t FUNC10(struct sk_buff *skb,
					struct net_device *dev)
{
	unsigned int ioaddr = dev->base_addr;
	struct el3_private *lp = FUNC2(dev);
	unsigned long flags;

	FUNC7("%s: el3_start_xmit(length = %ld) called, "
		  "status %4.4x.\n", dev->name, (long)skb->len,
		  FUNC1(ioaddr + EL3_STATUS));

	FUNC8(&lp->window_lock, flags);

	dev->stats.tx_bytes += skb->len;

	/* Put out the doubleword header... */
	FUNC5(skb->len, ioaddr + TX_FIFO);
	FUNC5(0, ioaddr + TX_FIFO);
	/* ... and the packet rounded to a doubleword. */
	FUNC4(ioaddr + TX_FIFO, skb->data, (skb->len+3)>>2);

	/* TxFree appears only in Window 1, not offset 0x1c. */
	if (FUNC1(ioaddr + TxFree) <= 1536) {
		FUNC3(dev);
		/* Interrupt us when the FIFO has room for max-sized packet. 
		   The threshold is in units of dwords. */
		FUNC5(SetTxThreshold + (1536>>2), ioaddr + EL3_CMD);
	}

	FUNC6(dev);
	FUNC9(&lp->window_lock, flags);
	FUNC0(skb);
	return NETDEV_TX_OK;
}