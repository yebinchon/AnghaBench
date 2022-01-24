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
typedef  int /*<<< orphan*/  u64 ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct nx_host_sds_ring {int /*<<< orphan*/  napi; } ;
struct nx_host_rds_ring {int num_desc; int skb_size; struct netxen_rx_buffer* rx_buf_arr; } ;
struct netxen_rx_buffer {int dummy; } ;
struct netxen_recv_context {struct nx_host_rds_ring* rds_rings; } ;
struct TYPE_2__ {int rxbytes; int /*<<< orphan*/  rx_pkts; } ;
struct netxen_adapter {int max_rds_rings; TYPE_1__ stats; struct netxen_recv_context recv_ctx; struct net_device* netdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC6 (struct netxen_adapter*,struct nx_host_rds_ring*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static struct netxen_rx_buffer *
FUNC10(struct netxen_adapter *adapter,
		struct nx_host_sds_ring *sds_ring,
		int ring, u64 sts_data0)
{
	struct net_device *netdev = adapter->netdev;
	struct netxen_recv_context *recv_ctx = &adapter->recv_ctx;
	struct netxen_rx_buffer *buffer;
	struct sk_buff *skb;
	struct nx_host_rds_ring *rds_ring;
	int index, length, cksum, pkt_offset;

	if (FUNC9(ring >= adapter->max_rds_rings))
		return NULL;

	rds_ring = &recv_ctx->rds_rings[ring];

	index = FUNC3(sts_data0);
	if (FUNC9(index >= rds_ring->num_desc))
		return NULL;

	buffer = &rds_ring->rx_buf_arr[index];

	length = FUNC5(sts_data0);
	cksum  = FUNC4(sts_data0);
	pkt_offset = FUNC2(sts_data0);

	skb = FUNC6(adapter, rds_ring, index, cksum);
	if (!skb)
		return buffer;

	if (length > rds_ring->skb_size)
		FUNC8(skb, rds_ring->skb_size);
	else
		FUNC8(skb, length);


	if (pkt_offset)
		FUNC7(skb, pkt_offset);

	skb->protocol = FUNC0(skb, netdev);

	FUNC1(&sds_ring->napi, skb);

	adapter->stats.rx_pkts++;
	adapter->stats.rxbytes += length;

	return buffer;
}