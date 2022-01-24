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
struct sk_buff {int len; } ;
struct net_device {int dummy; } ;
struct ipvl_pcpu_stats {int tx_bytes; int /*<<< orphan*/  syncp; int /*<<< orphan*/  tx_pkts; } ;
struct ipvl_dev {TYPE_1__* pcpu_stats; } ;
typedef  int netdev_tx_t ;
struct TYPE_2__ {int /*<<< orphan*/  tx_drps; } ;

/* Variables and functions */
 int NET_XMIT_CN ; 
 int NET_XMIT_SUCCESS ; 
 int FUNC0 (struct sk_buff*,struct net_device*) ; 
 scalar_t__ FUNC1 (int) ; 
 struct ipvl_dev* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ipvl_pcpu_stats* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static netdev_tx_t FUNC7(struct sk_buff *skb,
				     struct net_device *dev)
{
	const struct ipvl_dev *ipvlan = FUNC2(dev);
	int skblen = skb->len;
	int ret;

	ret = FUNC0(skb, dev);
	if (FUNC1(ret == NET_XMIT_SUCCESS || ret == NET_XMIT_CN)) {
		struct ipvl_pcpu_stats *pcptr;

		pcptr = FUNC4(ipvlan->pcpu_stats);

		FUNC5(&pcptr->syncp);
		pcptr->tx_pkts++;
		pcptr->tx_bytes += skblen;
		FUNC6(&pcptr->syncp);
	} else {
		FUNC3(ipvlan->pcpu_stats->tx_drps);
	}
	return ret;
}