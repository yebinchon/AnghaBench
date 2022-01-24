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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct sk_buff {int priority; scalar_t__ ip_summed; int /*<<< orphan*/  len; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_tso_err; int /*<<< orphan*/  tx_l2l3l4_err; int /*<<< orphan*/  tx_l4_proto_err; int /*<<< orphan*/  tx_vlan_err; } ;
struct hns3_enet_ring {int /*<<< orphan*/  syncp; TYPE_1__ stats; } ;
struct TYPE_4__ {void* outer_vlan_tag; void* vlan_tag; void* mss; void* paylen; void* type_cs_vlan_tso_len; void* ol_type_vlan_len_msec; } ;
struct hns3_desc {TYPE_2__ tx; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int HNS3_INNER_VLAN_TAG ; 
 int HNS3_OUTER_VLAN_TAG ; 
 int /*<<< orphan*/  HNS3_TXD_OVLAN_B ; 
 int /*<<< orphan*/  HNS3_TXD_VLAN_B ; 
 int VLAN_PRIO_MASK ; 
 int VLAN_PRIO_SHIFT ; 
 void* FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct hns3_enet_ring*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct sk_buff*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct hns3_enet_ring *ring,
			      struct sk_buff *skb, struct hns3_desc *desc)
{
	u32 ol_type_vlan_len_msec = 0;
	u32 type_cs_vlan_tso = 0;
	u32 paylen = skb->len;
	u16 inner_vtag = 0;
	u16 out_vtag = 0;
	u16 mss = 0;
	int ret;

	ret = FUNC3(ring, skb);
	if (FUNC11(ret < 0)) {
		FUNC9(&ring->syncp);
		ring->stats.tx_vlan_err++;
		FUNC10(&ring->syncp);
		return ret;
	} else if (ret == HNS3_INNER_VLAN_TAG) {
		inner_vtag = FUNC8(skb);
		inner_vtag |= (skb->priority << VLAN_PRIO_SHIFT) &
				VLAN_PRIO_MASK;
		FUNC4(type_cs_vlan_tso, HNS3_TXD_VLAN_B, 1);
	} else if (ret == HNS3_OUTER_VLAN_TAG) {
		out_vtag = FUNC8(skb);
		out_vtag |= (skb->priority << VLAN_PRIO_SHIFT) &
				VLAN_PRIO_MASK;
		FUNC4(ol_type_vlan_len_msec, HNS3_TXD_OVLAN_B,
			       1);
	}

	if (skb->ip_summed == CHECKSUM_PARTIAL) {
		u8 ol4_proto, il4_proto;

		FUNC7(skb);

		ret = FUNC2(skb, &ol4_proto, &il4_proto);
		if (FUNC11(ret)) {
			FUNC9(&ring->syncp);
			ring->stats.tx_l4_proto_err++;
			FUNC10(&ring->syncp);
			return ret;
		}

		ret = FUNC5(skb, ol4_proto, il4_proto,
				      &type_cs_vlan_tso,
				      &ol_type_vlan_len_msec);
		if (FUNC11(ret)) {
			FUNC9(&ring->syncp);
			ring->stats.tx_l2l3l4_err++;
			FUNC10(&ring->syncp);
			return ret;
		}

		ret = FUNC6(skb, &paylen, &mss,
				   &type_cs_vlan_tso);
		if (FUNC11(ret)) {
			FUNC9(&ring->syncp);
			ring->stats.tx_tso_err++;
			FUNC10(&ring->syncp);
			return ret;
		}
	}

	/* Set txbd */
	desc->tx.ol_type_vlan_len_msec =
		FUNC1(ol_type_vlan_len_msec);
	desc->tx.type_cs_vlan_tso_len = FUNC1(type_cs_vlan_tso);
	desc->tx.paylen = FUNC1(paylen);
	desc->tx.mss = FUNC0(mss);
	desc->tx.vlan_tag = FUNC0(inner_vtag);
	desc->tx.outer_vlan_tag = FUNC0(out_vtag);

	return 0;
}