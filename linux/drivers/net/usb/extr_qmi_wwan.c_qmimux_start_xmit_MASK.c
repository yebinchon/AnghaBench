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
struct sk_buff {unsigned int len; int /*<<< orphan*/  dev; } ;
struct qmimux_priv {int /*<<< orphan*/  stats64; int /*<<< orphan*/  real_dev; int /*<<< orphan*/  mux_id; } ;
struct qmimux_hdr {int /*<<< orphan*/  pkt_len; int /*<<< orphan*/  mux_id; scalar_t__ pad; } ;
struct pcpu_sw_netstats {unsigned int tx_bytes; int /*<<< orphan*/  syncp; int /*<<< orphan*/  tx_packets; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
typedef  scalar_t__ netdev_tx_t ;

/* Variables and functions */
 scalar_t__ NET_XMIT_CN ; 
 scalar_t__ NET_XMIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int) ; 
 struct qmimux_priv* FUNC3 (struct net_device*) ; 
 struct qmimux_hdr* FUNC4 (struct sk_buff*,int) ; 
 struct pcpu_sw_netstats* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static netdev_tx_t FUNC8(struct sk_buff *skb, struct net_device *dev)
{
	struct qmimux_priv *priv = FUNC3(dev);
	unsigned int len = skb->len;
	struct qmimux_hdr *hdr;
	netdev_tx_t ret;

	hdr = FUNC4(skb, sizeof(struct qmimux_hdr));
	hdr->pad = 0;
	hdr->mux_id = priv->mux_id;
	hdr->pkt_len = FUNC0(len);
	skb->dev = priv->real_dev;
	ret = FUNC1(skb);

	if (FUNC2(ret == NET_XMIT_SUCCESS || ret == NET_XMIT_CN)) {
		struct pcpu_sw_netstats *stats64 = FUNC5(priv->stats64);

		FUNC6(&stats64->syncp);
		stats64->tx_packets++;
		stats64->tx_bytes += len;
		FUNC7(&stats64->syncp);
	} else {
		dev->stats.tx_dropped++;
	}

	return ret;
}