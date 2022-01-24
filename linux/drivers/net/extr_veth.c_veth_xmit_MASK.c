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
struct veth_rq {int /*<<< orphan*/  xdp_prog; } ;
struct veth_priv {int /*<<< orphan*/  dropped; struct veth_rq* rq; int /*<<< orphan*/  peer; } ;
struct sk_buff {int len; } ;
struct pcpu_lstats {int bytes; int /*<<< orphan*/  syncp; int /*<<< orphan*/  packets; } ;
struct net_device {int real_num_rx_queues; int /*<<< orphan*/  lstats; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 scalar_t__ NET_RX_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct veth_rq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int) ; 
 struct veth_priv* FUNC4 (struct net_device*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 struct pcpu_lstats* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int) ; 
 scalar_t__ FUNC16 (struct net_device*,struct sk_buff*,struct veth_rq*,int) ; 

__attribute__((used)) static netdev_tx_t FUNC17(struct sk_buff *skb, struct net_device *dev)
{
	struct veth_priv *rcv_priv, *priv = FUNC4(dev);
	struct veth_rq *rq = NULL;
	struct net_device *rcv;
	int length = skb->len;
	bool rcv_xdp = false;
	int rxq;

	FUNC7();
	rcv = FUNC6(priv->peer);
	if (FUNC15(!rcv)) {
		FUNC2(skb);
		goto drop;
	}

	rcv_priv = FUNC4(rcv);
	rxq = FUNC9(skb);
	if (rxq < rcv->real_num_rx_queues) {
		rq = &rcv_priv->rq[rxq];
		rcv_xdp = FUNC5(rq->xdp_prog);
		if (rcv_xdp)
			FUNC10(skb, rxq);
	}

	FUNC11(skb);
	if (FUNC3(FUNC16(rcv, skb, rq, rcv_xdp) == NET_RX_SUCCESS)) {
		if (!rcv_xdp) {
			struct pcpu_lstats *stats = FUNC12(dev->lstats);

			FUNC13(&stats->syncp);
			stats->bytes += length;
			stats->packets++;
			FUNC14(&stats->syncp);
		}
	} else {
drop:
		FUNC1(&priv->dropped);
	}

	if (rcv_xdp)
		FUNC0(rq);

	FUNC8();

	return NETDEV_TX_OK;
}