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
struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {unsigned long tx_packets; unsigned long tx_bytes; } ;
struct net_device {TYPE_1__ stats; } ;
struct ioc3_private {int tx_ci; scalar_t__ txqlen; int /*<<< orphan*/  ioc3_lock; struct sk_buff** tx_skbs; struct ioc3_ethregs* regs; } ;
struct ioc3_ethregs {int /*<<< orphan*/  etcir; } ;

/* Variables and functions */
 scalar_t__ TX_RING_ENTRIES ; 
 int TX_RING_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct ioc3_private* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC7(struct net_device *dev)
{
	struct ioc3_private *ip = FUNC1(dev);
	struct ioc3_ethregs *regs = ip->regs;
	unsigned long packets, bytes;
	int tx_entry, o_entry;
	struct sk_buff *skb;
	u32 etcir;

	FUNC5(&ip->ioc3_lock);
	etcir = FUNC4(&regs->etcir);

	tx_entry = (etcir >> 7) & TX_RING_MASK;
	o_entry = ip->tx_ci;
	packets = 0;
	bytes = 0;

	while (o_entry != tx_entry) {
		packets++;
		skb = ip->tx_skbs[o_entry];
		bytes += skb->len;
		FUNC0(skb);
		ip->tx_skbs[o_entry] = NULL;

		o_entry = (o_entry + 1) & TX_RING_MASK;	/* Next */

		etcir = FUNC4(&regs->etcir);		/* More pkts sent?  */
		tx_entry = (etcir >> 7) & TX_RING_MASK;
	}

	dev->stats.tx_packets += packets;
	dev->stats.tx_bytes += bytes;
	ip->txqlen -= packets;

	if (FUNC2(dev) && ip->txqlen < TX_RING_ENTRIES)
		FUNC3(dev);

	ip->tx_ci = o_entry;
	FUNC6(&ip->ioc3_lock);
}