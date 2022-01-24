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
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct bmac_data {int /*<<< orphan*/  lock; scalar_t__ sleeping; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHERMINPACKET ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  EnableNormal ; 
 int /*<<< orphan*/  INTDISABLE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct bmac_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC8 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct bmac_data* FUNC9 (struct net_device*) ; 
 unsigned char* FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC13(struct net_device *dev)
{
	struct bmac_data *bp = FUNC9(dev);
	unsigned long flags;
	struct sk_buff *skb;
	unsigned char *data;

	FUNC11(&bp->lock, flags);
	FUNC0(dev);
	FUNC3(bp);
	FUNC2(dev);
	FUNC1(dev);
	FUNC4(dev);
	FUNC6(dev, INTDISABLE, EnableNormal);
	bp->sleeping = 0;

	/*
	 * It seems that the bmac can't receive until it's transmitted
	 * a packet.  So we give it a dummy packet to transmit.
	 */
	skb = FUNC8(dev, ETHERMINPACKET);
	if (skb != NULL) {
		data = FUNC10(skb, ETHERMINPACKET);
		FUNC7(data, dev->dev_addr, ETH_ALEN);
		FUNC7(data + ETH_ALEN, dev->dev_addr, ETH_ALEN);
		FUNC5(skb, dev);
	}
	FUNC12(&bp->lock, flags);
}