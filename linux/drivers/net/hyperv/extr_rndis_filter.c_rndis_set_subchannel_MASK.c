#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct rndis_device {int dummy; } ;
struct TYPE_8__ {scalar_t__ status; int num_subchannels; } ;
struct TYPE_7__ {int num_subchannels; int /*<<< orphan*/  op; } ;
struct TYPE_9__ {TYPE_3__ subchn_comp; TYPE_2__ subchn_req; } ;
struct TYPE_10__ {TYPE_4__ v5_msg; } ;
struct TYPE_6__ {int /*<<< orphan*/  msg_type; } ;
struct nvsp_message {TYPE_5__ msg; TYPE_1__ hdr; } ;
struct netvsc_device_info {int /*<<< orphan*/  rss_key; } ;
struct netvsc_device {int num_chn; int /*<<< orphan*/  open_chn; int /*<<< orphan*/  subchan_open; int /*<<< orphan*/  channel_init_wait; struct rndis_device* extension; struct nvsp_message channel_init_pkt; } ;
struct net_device_context {int* tx_table; struct hv_device* device_ctx; } ;
struct net_device {int dummy; } ;
struct hv_device {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EIO ; 
 int /*<<< orphan*/  NVSP_MSG5_TYPE_SUBCHANNEL ; 
 scalar_t__ NVSP_STAT_SUCCESS ; 
 int /*<<< orphan*/  NVSP_SUBCHANNEL_ALLOCATE ; 
 int /*<<< orphan*/  VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED ; 
 int /*<<< orphan*/  VM_PKT_DATA_INBAND ; 
 int VRSS_SEND_TAB_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nvsp_message*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,...) ; 
 struct net_device_context* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int) ; 
 int /*<<< orphan*/  netvsc_hash_key ; 
 int /*<<< orphan*/  FUNC7 (struct rndis_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,struct nvsp_message*) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct nvsp_message*,int,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct net_device *ndev,
			 struct netvsc_device *nvdev,
			 struct netvsc_device_info *dev_info)
{
	struct nvsp_message *init_packet = &nvdev->channel_init_pkt;
	struct net_device_context *ndev_ctx = FUNC4(ndev);
	struct hv_device *hv_dev = ndev_ctx->device_ctx;
	struct rndis_device *rdev = nvdev->extension;
	int i, ret;

	FUNC0();

	FUNC2(init_packet, 0, sizeof(struct nvsp_message));
	init_packet->hdr.msg_type = NVSP_MSG5_TYPE_SUBCHANNEL;
	init_packet->msg.v5_msg.subchn_req.op = NVSP_SUBCHANNEL_ALLOCATE;
	init_packet->msg.v5_msg.subchn_req.num_subchannels =
						nvdev->num_chn - 1;
	FUNC8(ndev, init_packet);

	ret = FUNC9(hv_dev->channel, init_packet,
			       sizeof(struct nvsp_message),
			       (unsigned long)init_packet,
			       VM_PKT_DATA_INBAND,
			       VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED);
	if (ret) {
		FUNC3(ndev, "sub channel allocate send failed: %d\n", ret);
		return ret;
	}

	FUNC11(&nvdev->channel_init_wait);
	if (init_packet->msg.v5_msg.subchn_comp.status != NVSP_STAT_SUCCESS) {
		FUNC3(ndev, "sub channel request failed\n");
		return -EIO;
	}

	nvdev->num_chn = 1 +
		init_packet->msg.v5_msg.subchn_comp.num_subchannels;

	/* wait for all sub channels to open */
	FUNC10(nvdev->subchan_open,
		   FUNC1(&nvdev->open_chn) == nvdev->num_chn);

	/* ignore failures from setting rss parameters, still have channels */
	if (dev_info)
		FUNC7(rdev, dev_info->rss_key);
	else
		FUNC7(rdev, netvsc_hash_key);

	FUNC6(ndev, nvdev->num_chn);
	FUNC5(ndev, nvdev->num_chn);

	for (i = 0; i < VRSS_SEND_TAB_SIZE; i++)
		ndev_ctx->tx_table[i] = i % nvdev->num_chn;

	return 0;
}