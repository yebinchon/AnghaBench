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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct tcphdr {int doff; int psh; int /*<<< orphan*/  seq; } ;
struct sk_buff {scalar_t__ len; scalar_t__ data; int /*<<< orphan*/  protocol; } ;
struct nx_host_sds_ring {int dummy; } ;
struct nx_host_rds_ring {int num_desc; struct netxen_rx_buffer* rx_buf_arr; } ;
struct netxen_rx_buffer {int dummy; } ;
struct netxen_recv_context {struct nx_host_rds_ring* rds_rings; } ;
struct TYPE_3__ {int /*<<< orphan*/  rxbytes; int /*<<< orphan*/  lro_pkts; } ;
struct netxen_adapter {int max_rds_rings; int flags; TYPE_1__ stats; struct netxen_recv_context recv_ctx; struct net_device* netdev; } ;
struct net_device {int dummy; } ;
struct iphdr {int ihl; int /*<<< orphan*/  tot_len; int /*<<< orphan*/  check; } ;
struct TYPE_4__ {int /*<<< orphan*/  gso_size; } ;

/* Variables and functions */
 scalar_t__ ETH_P_8021Q ; 
 int NETXEN_FW_MSS_CAP ; 
 int /*<<< orphan*/  STATUS_CKSUM_OK ; 
 scalar_t__ TCP_HDR_SIZE ; 
 scalar_t__ TCP_TS_HDR_SIZE ; 
 scalar_t__ VLAN_HLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC13 (struct netxen_adapter*,struct nx_host_rds_ring*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,scalar_t__) ; 
 TYPE_2__* FUNC16 (struct sk_buff*) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static struct netxen_rx_buffer *
FUNC18(struct netxen_adapter *adapter,
		struct nx_host_sds_ring *sds_ring,
		int ring, u64 sts_data0, u64 sts_data1)
{
	struct net_device *netdev = adapter->netdev;
	struct netxen_recv_context *recv_ctx = &adapter->recv_ctx;
	struct netxen_rx_buffer *buffer;
	struct sk_buff *skb;
	struct nx_host_rds_ring *rds_ring;
	struct iphdr *iph;
	struct tcphdr *th;
	bool push, timestamp;
	int l2_hdr_offset, l4_hdr_offset;
	int index;
	u16 lro_length, length, data_offset;
	u32 seq_number;
	u8 vhdr_len = 0;

	if (FUNC17(ring >= adapter->max_rds_rings))
		return NULL;

	rds_ring = &recv_ctx->rds_rings[ring];

	index = FUNC10(sts_data0);
	if (FUNC17(index >= rds_ring->num_desc))
		return NULL;

	buffer = &rds_ring->rx_buf_arr[index];

	timestamp = FUNC12(sts_data0);
	lro_length = FUNC7(sts_data0);
	l2_hdr_offset = FUNC5(sts_data0);
	l4_hdr_offset = FUNC6(sts_data0);
	push = FUNC9(sts_data0);
	seq_number = FUNC11(sts_data1);

	skb = FUNC13(adapter, rds_ring, index, STATUS_CKSUM_OK);
	if (!skb)
		return buffer;

	if (timestamp)
		data_offset = l4_hdr_offset + TCP_TS_HDR_SIZE;
	else
		data_offset = l4_hdr_offset + TCP_HDR_SIZE;

	FUNC15(skb, lro_length + data_offset);

	FUNC14(skb, l2_hdr_offset);
	skb->protocol = FUNC1(skb, netdev);

	if (skb->protocol == FUNC3(ETH_P_8021Q))
		vhdr_len = VLAN_HLEN;
	iph = (struct iphdr *)(skb->data + vhdr_len);
	th = (struct tcphdr *)((skb->data + vhdr_len) + (iph->ihl << 2));

	length = (iph->ihl << 2) + (th->doff << 2) + lro_length;
	FUNC0(&iph->check, iph->tot_len, FUNC3(length));
	iph->tot_len = FUNC3(length);
	th->psh = push;
	th->seq = FUNC2(seq_number);

	length = skb->len;

	if (adapter->flags & NETXEN_FW_MSS_CAP)
		FUNC16(skb)->gso_size  =  FUNC8(sts_data1);

	FUNC4(skb);

	adapter->stats.lro_pkts++;
	adapter->stats.rxbytes += length;

	return buffer;
}