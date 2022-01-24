#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  dev; int /*<<< orphan*/  ip_summed; scalar_t__ data_len; int /*<<< orphan*/  truesize; scalar_t__ len; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_cso; int /*<<< orphan*/  pkts; int /*<<< orphan*/  lro_merged; int /*<<< orphan*/  lro_pkts; int /*<<< orphan*/  vlan_ex; int /*<<< orphan*/  rx_drops; } ;
struct TYPE_3__ {int /*<<< orphan*/  napi; int /*<<< orphan*/  idx; struct adapter* adapter; } ;
struct sge_eth_rxq {TYPE_2__ stats; TYPE_1__ rspq; } ;
struct sge {scalar_t__ pktshift; } ;
struct port_info {int /*<<< orphan*/  vlan_id; } ;
struct pkt_gl {scalar_t__ tot_len; } ;
struct cpl_rx_pkt {int /*<<< orphan*/  vlan; scalar_t__ vlan_ex; } ;
struct adapter {struct sge sge; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int GRO_HELD ; 
 int GRO_MERGED ; 
 int GRO_MERGED_FREE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct pkt_gl const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 struct port_info* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pkt_gl const*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct sge_eth_rxq *rxq, const struct pkt_gl *gl,
		   const struct cpl_rx_pkt *pkt)
{
	struct adapter *adapter = rxq->rspq.adapter;
	struct sge *s = &adapter->sge;
	struct port_info *pi;
	int ret;
	struct sk_buff *skb;

	skb = FUNC4(&rxq->rspq.napi);
	if (FUNC9(!skb)) {
		FUNC8(gl);
		rxq->stats.rx_drops++;
		return;
	}

	FUNC2(skb, gl, s->pktshift);
	skb->len = gl->tot_len - s->pktshift;
	skb->data_len = skb->len;
	skb->truesize += skb->data_len;
	skb->ip_summed = CHECKSUM_UNNECESSARY;
	FUNC7(skb, rxq->rspq.idx);
	pi = FUNC6(skb->dev);

	if (pkt->vlan_ex && !pi->vlan_id) {
		FUNC0(skb, FUNC3(ETH_P_8021Q),
					FUNC1(pkt->vlan));
		rxq->stats.vlan_ex++;
	}
	ret = FUNC5(&rxq->rspq.napi);

	if (ret == GRO_HELD)
		rxq->stats.lro_pkts++;
	else if (ret == GRO_MERGED || ret == GRO_MERGED_FREE)
		rxq->stats.lro_merged++;
	rxq->stats.pkts++;
	rxq->stats.rx_cso++;
}