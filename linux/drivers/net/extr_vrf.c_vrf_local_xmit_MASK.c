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
struct sk_buff {int len; int /*<<< orphan*/  protocol; int /*<<< orphan*/  pkt_type; } ;
struct net_device {TYPE_1__* dstats; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_drps; } ;

/* Variables and functions */
 int NETDEV_TX_OK ; 
 scalar_t__ NET_RX_SUCCESS ; 
 int /*<<< orphan*/  PACKET_LOOPBACK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct net_device*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, struct net_device *dev,
			  struct dst_entry *dst)
{
	int len = skb->len;

	FUNC4(skb);

	FUNC3(skb, dst);

	/* set pkt_type to avoid skb hitting packet taps twice -
	 * once on Tx and again in Rx processing
	 */
	skb->pkt_type = PACKET_LOOPBACK;

	skb->protocol = FUNC0(skb, dev);

	if (FUNC1(FUNC2(skb) == NET_RX_SUCCESS))
		FUNC6(dev, len);
	else
		FUNC5(dev->dstats->rx_drps);

	return NETDEV_TX_OK;
}