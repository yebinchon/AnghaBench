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
typedef  int /*<<< orphan*/  u_short ;
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {int base_addr; int /*<<< orphan*/  name; TYPE_1__ stats; } ;
struct hp100_private {int lan_type; scalar_t__ hub_status; int mode; int /*<<< orphan*/  lock; int /*<<< orphan*/  mem_ptr_virt; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  DATA32 ; 
 int /*<<< orphan*/  FRAGMENT_LEN ; 
 int HP100_LAN_100 ; 
 int HP100_LAN_ERR ; 
 int HP100_MIN_PACKET_SIZE ; 
 scalar_t__ HP100_REG_DATA32 ; 
 int HP100_SET_LB ; 
 int HP100_TX_CMD ; 
 int HP100_TX_COMPLETE ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  IRQ_MASK ; 
 int /*<<< orphan*/  IRQ_STATUS ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  OPTION_MSW ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  TX_MEM_FREE ; 
 int /*<<< orphan*/  TX_PKT_CNT ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 void* FUNC9 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct hp100_private* FUNC19 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static netdev_tx_t FUNC25(struct sk_buff *skb,
				    struct net_device *dev)
{
	unsigned long flags;
	int i, ok_flag;
	int ioaddr = dev->base_addr;
	u_short val;
	struct hp100_private *lp = FUNC19(dev);

#ifdef HP100_DEBUG_B
	hp100_outw(0x4212, TRACE);
	printk("hp100: %s: start_xmit\n", dev->name);
#endif
	if (skb->len <= 0)
		goto drop;

	if (FUNC3(dev))
		goto drop;

	/* If there is not enough free memory on the card... */
	i = FUNC5(TX_MEM_FREE) & 0x7fffffff;
	if (!(((i / 2) - 539) > (skb->len + 16) && (FUNC4(TX_PKT_CNT) < 255))) {
#ifdef HP100_DEBUG
		printk("hp100: %s: start_xmit: tx free mem = 0x%x\n", dev->name, i);
#endif
		/* not waited long enough since last failed tx try? */
		if (FUNC24(jiffies, FUNC2(dev) + HZ)) {
#ifdef HP100_DEBUG
			printk("hp100: %s: trans_start timing problem\n",
			       dev->name);
#endif
			goto drop;
		}
		if (lp->lan_type == HP100_LAN_100 && lp->hub_status < 0) {
			/* we have a 100Mb/s adapter but it isn't connected to hub */
			FUNC21("hp100: %s: login to 100Mb/s hub retry\n", dev->name);
			FUNC15(dev);
			lp->hub_status = FUNC9(dev, 0);
			FUNC14(dev);
		} else {
			FUNC22(&lp->lock, flags);
			FUNC6();	/* Useful ? Jean II */
			i = FUNC13(dev);
			FUNC7();
			FUNC23(&lp->lock, flags);
			if (i == HP100_LAN_ERR)
				FUNC21("hp100: %s: link down detected\n", dev->name);
			else if (lp->lan_type != i) {	/* cable change! */
				/* it's very hard - all network setting must be changed!!! */
				FUNC21("hp100: %s: cable change 10Mb/s <-> 100Mb/s detected\n", dev->name);
				lp->lan_type = i;
				FUNC15(dev);
				if (lp->lan_type == HP100_LAN_100)
					lp->hub_status = FUNC9(dev, 0);
				FUNC14(dev);
			} else {
				FUNC21("hp100: %s: interface reset\n", dev->name);
				FUNC15(dev);
				if (lp->lan_type == HP100_LAN_100)
					lp->hub_status = FUNC9(dev, 0);
				FUNC14(dev);
				FUNC16(1);
			}
		}
		goto drop;
	}

	for (i = 0; i < 6000 && (FUNC4(OPTION_MSW) & HP100_TX_CMD); i++) {
#ifdef HP100_DEBUG_TX
		printk("hp100: %s: start_xmit: busy\n", dev->name);
#endif
	}

	FUNC22(&lp->lock, flags);
	FUNC6();
	val = FUNC8(IRQ_STATUS);
	/* Ack / clear the interrupt TX_COMPLETE interrupt - this interrupt is set
	 * when the current packet being transmitted on the wire is completed. */
	FUNC12(HP100_TX_COMPLETE, IRQ_STATUS);
#ifdef HP100_DEBUG_TX
	printk("hp100: %s: start_xmit: irq_status=0x%.4x, irqmask=0x%.4x, len=%d\n",
			dev->name, val, hp100_inw(IRQ_MASK), (int) skb->len);
#endif

	ok_flag = skb->len >= HP100_MIN_PACKET_SIZE;
	i = ok_flag ? skb->len : HP100_MIN_PACKET_SIZE;

	FUNC12(i, DATA32);	/* tell card the total packet length */
	FUNC12(i, FRAGMENT_LEN);	/* and first/only fragment length    */

	if (lp->mode == 2) {	/* memory mapped */
		/* Note: The J2585B needs alignment to 32bits here!  */
		FUNC17(lp->mem_ptr_virt, skb->data, (skb->len + 3) & ~3);
		if (!ok_flag)
			FUNC18(lp->mem_ptr_virt, 0, HP100_MIN_PACKET_SIZE - skb->len);
	} else {		/* programmed i/o */
		FUNC20(ioaddr + HP100_REG_DATA32, skb->data,
		      (skb->len + 3) >> 2);
		if (!ok_flag)
			for (i = (skb->len + 3) & ~3; i < HP100_MIN_PACKET_SIZE; i += 4)
				FUNC11(0, DATA32);
	}

	FUNC10(HP100_TX_CMD | HP100_SET_LB, OPTION_MSW);	/* send packet */

	dev->stats.tx_packets++;
	dev->stats.tx_bytes += skb->len;
	FUNC7();
	FUNC23(&lp->lock, flags);

	FUNC0(skb);

#ifdef HP100_DEBUG_TX
	printk("hp100: %s: start_xmit: end\n", dev->name);
#endif

	return NETDEV_TX_OK;

drop:
	FUNC1(skb);
	return NETDEV_TX_OK;

}