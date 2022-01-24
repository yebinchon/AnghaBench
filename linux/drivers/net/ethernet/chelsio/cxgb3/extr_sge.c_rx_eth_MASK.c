#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  ip_summed; TYPE_3__* dev; int /*<<< orphan*/  protocol; scalar_t__ data; } ;
struct sge_rspq {scalar_t__ polling; } ;
struct sge_qset {int /*<<< orphan*/  napi; int /*<<< orphan*/ * port_stats; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
struct port_info {size_t first_qset; TYPE_2__ iscsic; } ;
struct cpl_rx_pkt {size_t iff; scalar_t__ csum; int /*<<< orphan*/  vlan; scalar_t__ vlan_valid; int /*<<< orphan*/  fragment; scalar_t__ csum_valid; } ;
struct TYPE_4__ {struct sge_qset* qs; } ;
struct adapter {TYPE_1__ sge; int /*<<< orphan*/ * port; } ;
struct TYPE_6__ {int features; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int ETH_P_8021Q ; 
 int NETIF_F_RXCSUM ; 
 size_t SGE_PSTAT_RX_CSUM_GOOD ; 
 size_t SGE_PSTAT_VLANEX ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct port_info*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct port_info* FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct sge_qset* FUNC9 (struct sge_rspq*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct adapter *adap, struct sge_rspq *rq,
		   struct sk_buff *skb, int pad, int lro)
{
	struct cpl_rx_pkt *p = (struct cpl_rx_pkt *)(skb->data + pad);
	struct sge_qset *qs = FUNC9(rq);
	struct port_info *pi;

	FUNC11(skb, sizeof(*p) + pad);
	skb->protocol = FUNC2(skb, adap->port[p->iff]);
	pi = FUNC5(skb->dev);
	if ((skb->dev->features & NETIF_F_RXCSUM) && p->csum_valid &&
	    p->csum == FUNC3(0xffff) && !p->fragment) {
		qs->port_stats[SGE_PSTAT_RX_CSUM_GOOD]++;
		skb->ip_summed = CHECKSUM_UNNECESSARY;
	} else
		FUNC10(skb);
	FUNC12(skb, qs - &adap->sge.qs[pi->first_qset]);

	if (p->vlan_valid) {
		qs->port_stats[SGE_PSTAT_VLANEX]++;
		FUNC0(skb, FUNC3(ETH_P_8021Q), FUNC8(p->vlan));
	}
	if (rq->polling) {
		if (lro)
			FUNC4(&qs->napi, skb);
		else {
			if (FUNC13(pi->iscsic.flags))
				FUNC1(pi, skb);
			FUNC6(skb);
		}
	} else
		FUNC7(skb);
}