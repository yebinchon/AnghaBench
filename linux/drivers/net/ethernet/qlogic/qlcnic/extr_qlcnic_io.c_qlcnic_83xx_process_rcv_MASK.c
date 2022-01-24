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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int u16 ;
struct sk_buff {scalar_t__ ip_summed; int csum_level; int /*<<< orphan*/  protocol; } ;
struct qlcnic_rx_buffer {int dummy; } ;
struct qlcnic_recv_context {struct qlcnic_host_rds_ring* rds_rings; } ;
struct qlcnic_host_sds_ring {int /*<<< orphan*/  napi; } ;
struct qlcnic_host_rds_ring {int num_desc; int skb_size; struct qlcnic_rx_buffer* rx_buf_arr; } ;
struct TYPE_2__ {int rxbytes; int /*<<< orphan*/  rx_pkts; int /*<<< orphan*/  encap_rx_csummed; int /*<<< orphan*/  rxdropped; } ;
struct qlcnic_adapter {size_t max_rds_rings; TYPE_1__ stats; scalar_t__ rx_mac_learn; struct qlcnic_recv_context* recv_ctx; struct net_device* netdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct qlcnic_adapter*,struct sk_buff*,int,int) ; 
 int FUNC10 (struct qlcnic_adapter*,struct sk_buff*,int*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC12 (struct qlcnic_adapter*,struct qlcnic_host_rds_ring*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static struct qlcnic_rx_buffer *
FUNC15(struct qlcnic_adapter *adapter,
			struct qlcnic_host_sds_ring *sds_ring,
			u8 ring, u64 sts_data[])
{
	struct net_device *netdev = adapter->netdev;
	struct qlcnic_recv_context *recv_ctx = adapter->recv_ctx;
	struct qlcnic_rx_buffer *buffer;
	struct sk_buff *skb;
	struct qlcnic_host_rds_ring *rds_ring;
	int index, length, cksum, is_lb_pkt;
	u16 vid = 0xffff;
	int err;

	if (FUNC14(ring >= adapter->max_rds_rings))
		return NULL;

	rds_ring = &recv_ctx->rds_rings[ring];

	index = FUNC6(sts_data[0]);
	if (FUNC14(index >= rds_ring->num_desc))
		return NULL;

	buffer = &rds_ring->rx_buf_arr[index];
	length = FUNC8(sts_data[0]);
	cksum  = FUNC5(sts_data[1]);
	skb = FUNC12(adapter, rds_ring, index, cksum);
	if (!skb)
		return buffer;

	if (length > rds_ring->skb_size)
		FUNC13(skb, rds_ring->skb_size);
	else
		FUNC13(skb, length);

	err = FUNC10(adapter, skb, &vid);

	if (adapter->rx_mac_learn) {
		is_lb_pkt = FUNC7(sts_data[1], 0);
		FUNC9(adapter, skb, is_lb_pkt, vid);
	}

	if (FUNC14(err)) {
		adapter->stats.rxdropped++;
		FUNC1(skb);
		return buffer;
	}

	skb->protocol = FUNC2(skb, netdev);

	if (FUNC11(sts_data[1]) &&
	    skb->ip_summed == CHECKSUM_UNNECESSARY) {
		skb->csum_level = 1;
		adapter->stats.encap_rx_csummed++;
	}

	if (vid != 0xffff)
		FUNC0(skb, FUNC3(ETH_P_8021Q), vid);

	FUNC4(&sds_ring->napi, skb);

	adapter->stats.rx_pkts++;
	adapter->stats.rxbytes += length;

	return buffer;
}