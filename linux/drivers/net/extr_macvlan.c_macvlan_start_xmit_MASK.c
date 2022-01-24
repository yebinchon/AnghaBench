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
struct vlan_pcpu_stats {unsigned int tx_bytes; int /*<<< orphan*/  syncp; int /*<<< orphan*/  tx_packets; } ;
struct sk_buff {unsigned int len; } ;
struct net_device {int dummy; } ;
struct macvlan_dev {TYPE_1__* pcpu_stats; } ;
typedef  int netdev_tx_t ;
struct TYPE_2__ {int /*<<< orphan*/  tx_dropped; } ;

/* Variables and functions */
 int NET_XMIT_CN ; 
 int NET_XMIT_SUCCESS ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct macvlan_dev*,struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*,struct net_device*) ; 
 struct macvlan_dev* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct vlan_pcpu_stats* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static netdev_tx_t FUNC10(struct sk_buff *skb,
				      struct net_device *dev)
{
	struct macvlan_dev *vlan = FUNC3(dev);
	unsigned int len = skb->len;
	int ret;

	if (FUNC9(FUNC4(dev)))
		return FUNC1(vlan, skb);

	ret = FUNC2(skb, dev);

	if (FUNC0(ret == NET_XMIT_SUCCESS || ret == NET_XMIT_CN)) {
		struct vlan_pcpu_stats *pcpu_stats;

		pcpu_stats = FUNC6(vlan->pcpu_stats);
		FUNC7(&pcpu_stats->syncp);
		pcpu_stats->tx_packets++;
		pcpu_stats->tx_bytes += len;
		FUNC8(&pcpu_stats->syncp);
	} else {
		FUNC5(vlan->pcpu_stats->tx_dropped);
	}
	return ret;
}