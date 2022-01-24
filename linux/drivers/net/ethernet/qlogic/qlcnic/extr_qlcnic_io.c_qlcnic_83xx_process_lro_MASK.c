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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int u16 ;
struct tcphdr {int doff; int psh; } ;
struct sk_buff {void* protocol; int len; scalar_t__ data; } ;
struct qlcnic_rx_buffer {int dummy; } ;
struct qlcnic_recv_context {struct qlcnic_host_rds_ring* rds_rings; } ;
struct qlcnic_host_rds_ring {int num_desc; struct qlcnic_rx_buffer* rx_buf_arr; } ;
struct TYPE_3__ {int /*<<< orphan*/  lrobytes; int /*<<< orphan*/  lro_pkts; int /*<<< orphan*/  rxdropped; } ;
struct qlcnic_adapter {size_t max_rds_rings; int flags; TYPE_1__ stats; scalar_t__ rx_mac_learn; struct qlcnic_recv_context* recv_ctx; struct net_device* netdev; } ;
struct net_device {int dummy; } ;
struct ipv6hdr {void* payload_len; } ;
struct iphdr {int ihl; void* tot_len; int /*<<< orphan*/  check; } ;
struct TYPE_4__ {int gso_size; int /*<<< orphan*/  gso_type; } ;

/* Variables and functions */
 scalar_t__ ETH_P_8021Q ; 
 scalar_t__ ETH_P_IPV6 ; 
 int QLCNIC_FW_LRO_MSS_CAP ; 
 int QLCNIC_TCP_HDR_SIZE ; 
 int QLCNIC_TCP_TS_HDR_SIZE ; 
 int /*<<< orphan*/  SKB_GSO_TCPV4 ; 
 int /*<<< orphan*/  SKB_GSO_TCPV6 ; 
 int /*<<< orphan*/  STATUS_CKSUM_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 void* FUNC3 (struct sk_buff*,struct net_device*) ; 
 void* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (void*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct qlcnic_adapter*,struct sk_buff*,int,int) ; 
 int FUNC16 (struct qlcnic_adapter*,struct sk_buff*,int*) ; 
 struct sk_buff* FUNC17 (struct qlcnic_adapter*,struct qlcnic_host_rds_ring*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,int) ; 
 TYPE_2__* FUNC20 (struct sk_buff*) ; 
 scalar_t__ FUNC21 (int) ; 

__attribute__((used)) static struct qlcnic_rx_buffer *
FUNC22(struct qlcnic_adapter *adapter,
			u8 ring, u64 sts_data[])
{
	struct net_device *netdev = adapter->netdev;
	struct qlcnic_recv_context *recv_ctx = adapter->recv_ctx;
	struct qlcnic_rx_buffer *buffer;
	struct sk_buff *skb;
	struct qlcnic_host_rds_ring *rds_ring;
	struct iphdr *iph;
	struct ipv6hdr *ipv6h;
	struct tcphdr *th;
	bool push;
	int l2_hdr_offset, l4_hdr_offset;
	int index, is_lb_pkt;
	u16 lro_length, length, data_offset, gso_size;
	u16 vid = 0xffff;
	int err;

	if (FUNC21(ring >= adapter->max_rds_rings))
		return NULL;

	rds_ring = &recv_ctx->rds_rings[ring];

	index = FUNC8(sts_data[0]);
	if (FUNC21(index >= rds_ring->num_desc))
		return NULL;

	buffer = &rds_ring->rx_buf_arr[index];

	lro_length = FUNC14(sts_data[0]);
	l2_hdr_offset = FUNC12(sts_data[1]);
	l4_hdr_offset = FUNC13(sts_data[1]);
	push = FUNC10(sts_data[1]);

	skb = FUNC17(adapter, rds_ring, index, STATUS_CKSUM_OK);
	if (!skb)
		return buffer;

	if (FUNC11(sts_data[1]))
		data_offset = l4_hdr_offset + QLCNIC_TCP_TS_HDR_SIZE;
	else
		data_offset = l4_hdr_offset + QLCNIC_TCP_HDR_SIZE;

	FUNC19(skb, lro_length + data_offset);
	FUNC18(skb, l2_hdr_offset);

	err = FUNC16(adapter, skb, &vid);

	if (adapter->rx_mac_learn) {
		is_lb_pkt = FUNC9(sts_data[1], 1);
		FUNC15(adapter, skb, is_lb_pkt, vid);
	}

	if (FUNC21(err)) {
		adapter->stats.rxdropped++;
		FUNC2(skb);
		return buffer;
	}

	skb->protocol = FUNC3(skb, netdev);
	if (FUNC6(skb->protocol) == ETH_P_IPV6) {
		ipv6h = (struct ipv6hdr *)skb->data;
		th = (struct tcphdr *)(skb->data + sizeof(struct ipv6hdr));

		length = (th->doff << 2) + lro_length;
		ipv6h->payload_len = FUNC4(length);
	} else {
		iph = (struct iphdr *)skb->data;
		th = (struct tcphdr *)(skb->data + (iph->ihl << 2));
		length = (iph->ihl << 2) + (th->doff << 2) + lro_length;
		FUNC1(&iph->check, iph->tot_len, FUNC4(length));
		iph->tot_len = FUNC4(length);
	}

	th->psh = push;
	length = skb->len;

	if (adapter->flags & QLCNIC_FW_LRO_MSS_CAP) {
		gso_size = FUNC7(sts_data[0]);
		FUNC20(skb)->gso_size = gso_size;
		if (skb->protocol == FUNC4(ETH_P_IPV6))
			FUNC20(skb)->gso_type = SKB_GSO_TCPV6;
		else
			FUNC20(skb)->gso_type = SKB_GSO_TCPV4;
	}

	if (vid != 0xffff)
		FUNC0(skb, FUNC4(ETH_P_8021Q), vid);

	FUNC5(skb);

	adapter->stats.lro_pkts++;
	adapter->stats.lrobytes += length;
	return buffer;
}