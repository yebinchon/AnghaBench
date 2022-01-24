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
typedef  int u8 ;
typedef  int u32 ;
struct tcphdr {int doff; int /*<<< orphan*/  check; } ;
struct sk_buff {scalar_t__ ip_summed; unsigned char* data; int len; } ;
struct ipv6hdr {scalar_t__ payload_len; } ;
struct iphdr {int version; int ihl; scalar_t__ tot_len; int /*<<< orphan*/  check; } ;
struct igb_tx_buffer {int tx_flags; int bytecount; int /*<<< orphan*/  gso_segs; struct sk_buff* skb; } ;
struct igb_ring {int dummy; } ;
struct TYPE_2__ {int gso_size; int /*<<< orphan*/  gso_segs; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int E1000_ADVTXD_L4LEN_SHIFT ; 
 int E1000_ADVTXD_MACLEN_SHIFT ; 
 int E1000_ADVTXD_MSS_SHIFT ; 
 int E1000_ADVTXD_TUCMD_IPV4 ; 
 int E1000_ADVTXD_TUCMD_L4T_TCP ; 
 int IGB_TX_FLAGS_CSUM ; 
 int IGB_TX_FLAGS_IPV4 ; 
 int IGB_TX_FLAGS_TSO ; 
 int IGB_TX_FLAGS_VLAN_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct igb_ring*,struct igb_tx_buffer*,int,int,int) ; 
 void* FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 unsigned char* FUNC8 (struct sk_buff*) ; 
 TYPE_1__* FUNC9 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC10(struct igb_ring *tx_ring,
		   struct igb_tx_buffer *first,
		   u8 *hdr_len)
{
	u32 vlan_macip_lens, type_tucmd, mss_l4len_idx;
	struct sk_buff *skb = first->skb;
	union {
		struct iphdr *v4;
		struct ipv6hdr *v6;
		unsigned char *hdr;
	} ip;
	union {
		struct tcphdr *tcp;
		unsigned char *hdr;
	} l4;
	u32 paylen, l4_offset;
	int err;

	if (skb->ip_summed != CHECKSUM_PARTIAL)
		return 0;

	if (!FUNC7(skb))
		return 0;

	err = FUNC6(skb, 0);
	if (err < 0)
		return err;

	ip.hdr = FUNC8(skb);
	l4.hdr = FUNC5(skb);

	/* ADV DTYP TUCMD MKRLOC/ISCSIHEDLEN */
	type_tucmd = E1000_ADVTXD_TUCMD_L4T_TCP;

	/* initialize outer IP header fields */
	if (ip.v4->version == 4) {
		unsigned char *csum_start = FUNC5(skb);
		unsigned char *trans_start = ip.hdr + (ip.v4->ihl * 4);

		/* IP header will have to cancel out any data that
		 * is not a part of the outer IP header
		 */
		ip.v4->check = FUNC0(FUNC1(trans_start,
						      csum_start - trans_start,
						      0));
		type_tucmd |= E1000_ADVTXD_TUCMD_IPV4;

		ip.v4->tot_len = 0;
		first->tx_flags |= IGB_TX_FLAGS_TSO |
				   IGB_TX_FLAGS_CSUM |
				   IGB_TX_FLAGS_IPV4;
	} else {
		ip.v6->payload_len = 0;
		first->tx_flags |= IGB_TX_FLAGS_TSO |
				   IGB_TX_FLAGS_CSUM;
	}

	/* determine offset of inner transport header */
	l4_offset = l4.hdr - skb->data;

	/* compute length of segmentation header */
	*hdr_len = (l4.tcp->doff * 4) + l4_offset;

	/* remove payload length from inner checksum */
	paylen = skb->len - l4_offset;
	FUNC2(&l4.tcp->check, FUNC3(paylen));

	/* update gso size and bytecount with header size */
	first->gso_segs = FUNC9(skb)->gso_segs;
	first->bytecount += (first->gso_segs - 1) * *hdr_len;

	/* MSS L4LEN IDX */
	mss_l4len_idx = (*hdr_len - l4_offset) << E1000_ADVTXD_L4LEN_SHIFT;
	mss_l4len_idx |= FUNC9(skb)->gso_size << E1000_ADVTXD_MSS_SHIFT;

	/* VLAN MACLEN IPLEN */
	vlan_macip_lens = l4.hdr - ip.hdr;
	vlan_macip_lens |= (ip.hdr - skb->data) << E1000_ADVTXD_MACLEN_SHIFT;
	vlan_macip_lens |= first->tx_flags & IGB_TX_FLAGS_VLAN_MASK;

	FUNC4(tx_ring, first, vlan_macip_lens,
			type_tucmd, mss_l4len_idx);

	return 1;
}