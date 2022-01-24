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
typedef  scalar_t__ ulong ;
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct vmbus_channel {scalar_t__ rescind; int /*<<< orphan*/  outbound; } ;
struct sk_buff {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  msg_type; } ;
struct nvsp_1_message_send_rndis_packet {int channel_type; scalar_t__ send_buf_section_index; scalar_t__ send_buf_section_size; } ;
struct TYPE_5__ {struct nvsp_1_message_send_rndis_packet send_rndis_pkt; } ;
struct TYPE_6__ {TYPE_1__ v1_msg; } ;
struct nvsp_message {TYPE_3__ hdr; TYPE_2__ msg; } ;
struct netvsc_device {int /*<<< orphan*/  tx_disable; struct netvsc_channel* chan_table; } ;
struct netvsc_channel {int /*<<< orphan*/  queue_sends; struct vmbus_channel* channel; } ;
struct netdev_queue {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  wake_queue; int /*<<< orphan*/  stop_queue; } ;
struct net_device_context {TYPE_4__ eth_stats; } ;
struct net_device {int dummy; } ;
struct hv_page_buffer {int dummy; } ;
struct hv_netvsc_packet {size_t q_idx; scalar_t__ send_buf_index; scalar_t__ total_data_buflen; int /*<<< orphan*/  page_buf_cnt; int /*<<< orphan*/  rmsg_pgcnt; scalar_t__ cp_partial; } ;
struct hv_device {int dummy; } ;
typedef  int /*<<< orphan*/  nvmsg ;

/* Variables and functions */
 int EAGAIN ; 
 int ENODEV ; 
 int ENOSPC ; 
 scalar_t__ NETVSC_INVALID_INDEX ; 
 int /*<<< orphan*/  NVSP_MSG1_TYPE_SEND_RNDIS_PKT ; 
 scalar_t__ RING_AVAIL_PERCENT_LOWATER ; 
 int /*<<< orphan*/  VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED ; 
 int /*<<< orphan*/  VM_PKT_DATA_INBAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct net_device* FUNC3 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 struct netdev_queue* FUNC5 (struct net_device*,size_t) ; 
 struct net_device_context* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC8 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC9 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,struct vmbus_channel*,struct nvsp_1_message_send_rndis_packet*) ; 
 int FUNC11 (struct vmbus_channel*,struct nvsp_message*,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct vmbus_channel*,struct hv_page_buffer*,int /*<<< orphan*/ ,struct nvsp_message*,int,scalar_t__) ; 

__attribute__((used)) static inline int FUNC13(
	struct hv_device *device,
	struct hv_netvsc_packet *packet,
	struct netvsc_device *net_device,
	struct hv_page_buffer *pb,
	struct sk_buff *skb)
{
	struct nvsp_message nvmsg;
	struct nvsp_1_message_send_rndis_packet *rpkt =
		&nvmsg.msg.v1_msg.send_rndis_pkt;
	struct netvsc_channel * const nvchan =
		&net_device->chan_table[packet->q_idx];
	struct vmbus_channel *out_channel = nvchan->channel;
	struct net_device *ndev = FUNC3(device);
	struct net_device_context *ndev_ctx = FUNC6(ndev);
	struct netdev_queue *txq = FUNC5(ndev, packet->q_idx);
	u64 req_id;
	int ret;
	u32 ring_avail = FUNC2(&out_channel->outbound);

	nvmsg.hdr.msg_type = NVSP_MSG1_TYPE_SEND_RNDIS_PKT;
	if (skb)
		rpkt->channel_type = 0;		/* 0 is RMC_DATA */
	else
		rpkt->channel_type = 1;		/* 1 is RMC_CONTROL */

	rpkt->send_buf_section_index = packet->send_buf_index;
	if (packet->send_buf_index == NETVSC_INVALID_INDEX)
		rpkt->send_buf_section_size = 0;
	else
		rpkt->send_buf_section_size = packet->total_data_buflen;

	req_id = (ulong)skb;

	if (out_channel->rescind)
		return -ENODEV;

	FUNC10(ndev, out_channel, rpkt);

	if (packet->page_buf_cnt) {
		if (packet->cp_partial)
			pb += packet->rmsg_pgcnt;

		ret = FUNC12(out_channel,
						  pb, packet->page_buf_cnt,
						  &nvmsg, sizeof(nvmsg),
						  req_id);
	} else {
		ret = FUNC11(out_channel,
				       &nvmsg, sizeof(nvmsg),
				       req_id, VM_PKT_DATA_INBAND,
				       VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED);
	}

	if (ret == 0) {
		FUNC0(&nvchan->queue_sends);

		if (ring_avail < RING_AVAIL_PERCENT_LOWATER) {
			FUNC8(txq);
			ndev_ctx->eth_stats.stop_queue++;
		}
	} else if (ret == -EAGAIN) {
		FUNC8(txq);
		ndev_ctx->eth_stats.stop_queue++;
	} else {
		FUNC4(ndev,
			   "Unable to send packet pages %u len %u, ret %d\n",
			   packet->page_buf_cnt, packet->total_data_buflen,
			   ret);
	}

	if (FUNC7(txq) &&
	    FUNC1(&nvchan->queue_sends) < 1 &&
	    !net_device->tx_disable) {
		FUNC9(txq);
		ndev_ctx->eth_stats.wake_queue++;
		if (ret == -EAGAIN)
			ret = -ENOSPC;
	}

	return ret;
}