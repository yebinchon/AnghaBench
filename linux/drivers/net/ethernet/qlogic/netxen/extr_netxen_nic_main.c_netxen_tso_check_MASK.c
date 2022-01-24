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
typedef  scalar_t__ u8 ;
typedef  size_t u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct vlan_ethhdr {scalar_t__ h_vlan_encapsulated_proto; void* h_vlan_TCI; void* h_vlan_proto; } ;
struct sk_buff {scalar_t__ protocol; scalar_t__ ip_summed; scalar_t__ data; } ;
struct nx_host_tx_ring {size_t producer; int /*<<< orphan*/  num_desc; TYPE_1__* cmd_buf_arr; struct cmd_desc_type0* desc_head; } ;
struct net_device {int features; } ;
struct cmd_desc_type0 {int total_hdr_length; int tcp_hdr_offset; int ip_hdr_offset; int /*<<< orphan*/  mss; } ;
typedef  scalar_t__ __be16 ;
struct TYPE_8__ {scalar_t__ protocol; } ;
struct TYPE_7__ {scalar_t__ nexthdr; } ;
struct TYPE_6__ {scalar_t__ gso_size; } ;
struct TYPE_5__ {int /*<<< orphan*/ * skb; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  FLAGS_VLAN_OOB ; 
 int /*<<< orphan*/  FLAGS_VLAN_TAGGED ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ IPPROTO_UDP ; 
 int NETIF_F_TSO ; 
 int NETIF_F_TSO6 ; 
 scalar_t__ TX_ETHER_PKT ; 
 scalar_t__ TX_TCPV6_PKT ; 
 scalar_t__ TX_TCP_LSO ; 
 scalar_t__ TX_TCP_LSO6 ; 
 scalar_t__ TX_TCP_PKT ; 
 scalar_t__ TX_UDPV6_PKT ; 
 scalar_t__ TX_UDP_PKT ; 
 int VLAN_HLEN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 size_t FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (struct sk_buff*) ; 
 TYPE_3__* FUNC6 (struct sk_buff*) ; 
 int FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct cmd_desc_type0*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct cmd_desc_type0*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,struct vlan_ethhdr*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int,char*,int) ; 
 int FUNC12 (struct sk_buff*) ; 
 TYPE_2__* FUNC13 (struct sk_buff*) ; 
 int FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 scalar_t__ FUNC16 (struct sk_buff*) ; 
 int FUNC17 (struct sk_buff*) ; 

__attribute__((used)) static void
FUNC18(struct net_device *netdev,
		struct nx_host_tx_ring *tx_ring,
		struct cmd_desc_type0 *first_desc,
		struct sk_buff *skb)
{
	u8 opcode = TX_ETHER_PKT;
	__be16 protocol = skb->protocol;
	u16 flags = 0, vid = 0;
	u32 producer;
	int copied, offset, copy_len, hdr_len = 0, tso = 0, vlan_oob = 0;
	struct cmd_desc_type0 *hwdesc;
	struct vlan_ethhdr *vh;

	if (protocol == FUNC1(ETH_P_8021Q)) {

		vh = (struct vlan_ethhdr *)skb->data;
		protocol = vh->h_vlan_encapsulated_proto;
		flags = FLAGS_VLAN_TAGGED;

	} else if (FUNC16(skb)) {
		flags = FLAGS_VLAN_OOB;
		vid = FUNC15(skb);
		FUNC9(first_desc, vid);
		vlan_oob = 1;
	}

	if ((netdev->features & (NETIF_F_TSO | NETIF_F_TSO6)) &&
			FUNC13(skb)->gso_size > 0) {

		hdr_len = FUNC14(skb) + FUNC17(skb);

		first_desc->mss = FUNC2(FUNC13(skb)->gso_size);
		first_desc->total_hdr_length = hdr_len;
		if (vlan_oob) {
			first_desc->total_hdr_length += VLAN_HLEN;
			first_desc->tcp_hdr_offset = VLAN_HLEN;
			first_desc->ip_hdr_offset = VLAN_HLEN;
			/* Only in case of TSO on vlan device */
			flags |= FLAGS_VLAN_TAGGED;
		}

		opcode = (protocol == FUNC1(ETH_P_IPV6)) ?
				TX_TCP_LSO6 : TX_TCP_LSO;
		tso = 1;

	} else if (skb->ip_summed == CHECKSUM_PARTIAL) {
		u8 l4proto;

		if (protocol == FUNC1(ETH_P_IP)) {
			l4proto = FUNC5(skb)->protocol;

			if (l4proto == IPPROTO_TCP)
				opcode = TX_TCP_PKT;
			else if(l4proto == IPPROTO_UDP)
				opcode = TX_UDP_PKT;
		} else if (protocol == FUNC1(ETH_P_IPV6)) {
			l4proto = FUNC6(skb)->nexthdr;

			if (l4proto == IPPROTO_TCP)
				opcode = TX_TCPV6_PKT;
			else if(l4proto == IPPROTO_UDP)
				opcode = TX_UDPV6_PKT;
		}
	}

	first_desc->tcp_hdr_offset += FUNC14(skb);
	first_desc->ip_hdr_offset += FUNC12(skb);
	FUNC8(first_desc, flags, opcode);

	if (!tso)
		return;

	/* For LSO, we need to copy the MAC/IP/TCP headers into
	 * the descriptor ring
	 */
	producer = tx_ring->producer;
	copied = 0;
	offset = 2;

	if (vlan_oob) {
		/* Create a TSO vlan header template for firmware */

		hwdesc = &tx_ring->desc_head[producer];
		tx_ring->cmd_buf_arr[producer].skb = NULL;

		copy_len = FUNC7((int)sizeof(struct cmd_desc_type0) - offset,
				hdr_len + VLAN_HLEN);

		vh = (struct vlan_ethhdr *)((char *)hwdesc + 2);
		FUNC10(skb, vh, 12);
		vh->h_vlan_proto = FUNC4(ETH_P_8021Q);
		vh->h_vlan_TCI = FUNC4(vid);
		FUNC11(skb, 12,
				(char *)vh + 16, copy_len - 16);

		copied = copy_len - VLAN_HLEN;
		offset = 0;

		producer = FUNC3(producer, tx_ring->num_desc);
	}

	while (copied < hdr_len) {

		copy_len = FUNC7((int)sizeof(struct cmd_desc_type0) - offset,
				(hdr_len - copied));

		hwdesc = &tx_ring->desc_head[producer];
		tx_ring->cmd_buf_arr[producer].skb = NULL;

		FUNC11(skb, copied,
				 (char *)hwdesc + offset, copy_len);

		copied += copy_len;
		offset = 0;

		producer = FUNC3(producer, tx_ring->num_desc);
	}

	tx_ring->producer = producer;
	FUNC0();
}