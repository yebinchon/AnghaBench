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
struct sk_buff {int len; struct net_device* dev; int /*<<< orphan*/  protocol; } ;
struct TYPE_2__ {int tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct lapbethdev {struct net_device* ethdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_DEC ; 
 int /*<<< orphan*/  ETH_P_X25 ; 
 int /*<<< orphan*/  bcast_addr ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct lapbethdev* FUNC3 (struct net_device*) ; 
 unsigned char* FUNC4 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC5(struct net_device *ndev, struct sk_buff *skb)
{
	struct lapbethdev *lapbeth = FUNC3(ndev);
	unsigned char *ptr;
	struct net_device *dev;
	int size = skb->len;

	skb->protocol = FUNC2(ETH_P_X25);

	ptr = FUNC4(skb, 2);

	*ptr++ = size % 256;
	*ptr++ = size / 256;

	ndev->stats.tx_packets++;
	ndev->stats.tx_bytes += size;

	skb->dev = dev = lapbeth->ethdev;

	FUNC0(skb, dev, ETH_P_DEC, bcast_addr, NULL, 0);

	FUNC1(skb);
}