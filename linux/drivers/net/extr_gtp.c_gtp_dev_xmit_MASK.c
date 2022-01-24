#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct TYPE_7__ {int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_3__ stats; int /*<<< orphan*/  needed_headroom; } ;
struct TYPE_5__ {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct gtp_pktinfo {int /*<<< orphan*/  gtph_port; TYPE_4__* rt; TYPE_2__* iph; TYPE_1__ fl4; int /*<<< orphan*/  sk; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_8__ {int /*<<< orphan*/  dst; } ;
struct TYPE_6__ {int /*<<< orphan*/  tos; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  ETH_P_IP 128 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*,struct net_device*,struct gtp_pktinfo*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static netdev_tx_t FUNC10(struct sk_buff *skb, struct net_device *dev)
{
	unsigned int proto = FUNC4(skb->protocol);
	struct gtp_pktinfo pktinfo;
	int err;

	/* Ensure there is sufficient headroom. */
	if (FUNC7(skb, dev->needed_headroom))
		goto tx_err;

	FUNC8(skb);

	/* PDP context lookups in gtp_build_skb_*() need rcu read-side lock. */
	FUNC5();
	switch (proto) {
	case ETH_P_IP:
		err = FUNC1(skb, dev, &pktinfo);
		break;
	default:
		err = -EOPNOTSUPP;
		break;
	}
	FUNC6();

	if (err < 0)
		goto tx_err;

	switch (proto) {
	case ETH_P_IP:
		FUNC3(pktinfo.dev, "gtp -> IP src: %pI4 dst: %pI4\n",
			   &pktinfo.iph->saddr, &pktinfo.iph->daddr);
		FUNC9(pktinfo.rt, pktinfo.sk, skb,
				    pktinfo.fl4.saddr, pktinfo.fl4.daddr,
				    pktinfo.iph->tos,
				    FUNC2(&pktinfo.rt->dst),
				    0,
				    pktinfo.gtph_port, pktinfo.gtph_port,
				    true, false);
		break;
	}

	return NETDEV_TX_OK;
tx_err:
	dev->stats.tx_errors++;
	FUNC0(skb);
	return NETDEV_TX_OK;
}