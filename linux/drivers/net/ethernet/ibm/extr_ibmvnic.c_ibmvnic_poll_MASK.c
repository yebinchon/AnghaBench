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
struct TYPE_4__ {int flags; scalar_t__ first; int /*<<< orphan*/  vlan_tci; scalar_t__ off_frame_data; int /*<<< orphan*/  len; scalar_t__ rc; int /*<<< orphan*/  correlator; } ;
union sub_crq {TYPE_1__ rx_comp; } ;
typedef  int u8 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  protocol; } ;
struct TYPE_5__ {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct net_device {TYPE_2__ stats; } ;
struct napi_struct {struct net_device* dev; } ;
struct ibmvnic_rx_buff {scalar_t__ data; struct sk_buff* skb; } ;
struct ibmvnic_adapter {int napi; scalar_t__ reset_reason; scalar_t__ state; int /*<<< orphan*/ * rx_scrq; int /*<<< orphan*/ * rx_pool; TYPE_3__* rx_stats_buffers; scalar_t__ rx_vlan_header_insertion; int /*<<< orphan*/  resetting; } ;
struct TYPE_6__ {int /*<<< orphan*/  bytes; int /*<<< orphan*/  packets; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int IBMVNIC_IP_CHKSUM_GOOD ; 
 int IBMVNIC_TCP_UDP_CHKSUM_GOOD ; 
 int IBMVNIC_VLAN_STRIPPED ; 
 scalar_t__ VNIC_CLOSING ; 
 scalar_t__ VNIC_RESET_NON_FATAL ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct ibmvnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ibmvnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 union sub_crq* FUNC9 (struct ibmvnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct napi_struct*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct napi_struct*,struct sk_buff*) ; 
 scalar_t__ FUNC12 (struct napi_struct*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*,char*,scalar_t__) ; 
 struct ibmvnic_adapter* FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct ibmvnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct ibmvnic_adapter*,struct ibmvnic_rx_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct ibmvnic_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*,int) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (int) ; 

__attribute__((used)) static int FUNC24(struct napi_struct *napi, int budget)
{
	struct net_device *netdev = napi->dev;
	struct ibmvnic_adapter *adapter = FUNC14(netdev);
	int scrq_num = (int)(napi - adapter->napi);
	int frames_processed = 0;

restart_poll:
	while (frames_processed < budget) {
		struct sk_buff *skb;
		struct ibmvnic_rx_buff *rx_buff;
		union sub_crq *next;
		u32 length;
		u16 offset;
		u8 flags = 0;

		if (FUNC23(FUNC22(0, &adapter->resetting) &&
			     adapter->reset_reason != VNIC_RESET_NON_FATAL)) {
			FUNC6(adapter, adapter->rx_scrq[scrq_num]);
			FUNC10(napi, frames_processed);
			return frames_processed;
		}

		if (!FUNC16(adapter, adapter->rx_scrq[scrq_num]))
			break;
		next = FUNC9(adapter, adapter->rx_scrq[scrq_num]);
		rx_buff =
		    (struct ibmvnic_rx_buff *)FUNC3(next->
							  rx_comp.correlator);
		/* do error checking */
		if (next->rx_comp.rc) {
			FUNC13(netdev, "rx buffer returned with rc %x\n",
				   FUNC1(next->rx_comp.rc));
			/* free the entry */
			next->rx_comp.first = 0;
			FUNC4(rx_buff->skb);
			FUNC17(adapter, rx_buff);
			continue;
		} else if (!rx_buff->skb) {
			/* free the entry */
			next->rx_comp.first = 0;
			FUNC17(adapter, rx_buff);
			continue;
		}

		length = FUNC2(next->rx_comp.len);
		offset = FUNC1(next->rx_comp.off_frame_data);
		flags = next->rx_comp.flags;
		skb = rx_buff->skb;
		FUNC19(skb, rx_buff->data + offset,
					length);

		/* VLAN Header has been stripped by the system firmware and
		 * needs to be inserted by the driver
		 */
		if (adapter->rx_vlan_header_insertion &&
		    (flags & IBMVNIC_VLAN_STRIPPED))
			FUNC0(skb, FUNC8(ETH_P_8021Q),
					       FUNC15(next->rx_comp.vlan_tci));

		/* free the entry */
		next->rx_comp.first = 0;
		FUNC17(adapter, rx_buff);

		FUNC20(skb, length);
		skb->protocol = FUNC7(skb, netdev);
		FUNC21(skb, scrq_num);

		if (flags & IBMVNIC_IP_CHKSUM_GOOD &&
		    flags & IBMVNIC_TCP_UDP_CHKSUM_GOOD) {
			skb->ip_summed = CHECKSUM_UNNECESSARY;
		}

		length = skb->len;
		FUNC11(napi, skb); /* send it up */
		netdev->stats.rx_packets++;
		netdev->stats.rx_bytes += length;
		adapter->rx_stats_buffers[scrq_num].packets++;
		adapter->rx_stats_buffers[scrq_num].bytes += length;
		frames_processed++;
	}

	if (adapter->state != VNIC_CLOSING)
		FUNC18(adapter, &adapter->rx_pool[scrq_num]);

	if (frames_processed < budget) {
		FUNC6(adapter, adapter->rx_scrq[scrq_num]);
		FUNC10(napi, frames_processed);
		if (FUNC16(adapter, adapter->rx_scrq[scrq_num]) &&
		    FUNC12(napi)) {
			FUNC5(adapter, adapter->rx_scrq[scrq_num]);
			goto restart_poll;
		}
	}
	return frames_processed;
}