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
struct TYPE_6__ {int /*<<< orphan*/  active_datapath; } ;
struct TYPE_7__ {TYPE_2__ active_dp; } ;
struct TYPE_8__ {TYPE_3__ v4_msg; } ;
struct TYPE_5__ {int /*<<< orphan*/  msg_type; } ;
struct nvsp_message {TYPE_4__ msg; TYPE_1__ hdr; } ;
struct netvsc_device {struct nvsp_message channel_init_pkt; } ;
struct net_device_context {int /*<<< orphan*/  nvdev; struct hv_device* device_ctx; } ;
struct net_device {int dummy; } ;
struct hv_device {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVSP_DATAPATH_SYNTHETIC ; 
 int /*<<< orphan*/  NVSP_DATAPATH_VF ; 
 int /*<<< orphan*/  NVSP_MSG4_TYPE_SWITCH_DATA_PATH ; 
 int /*<<< orphan*/  VM_PKT_DATA_INBAND ; 
 int /*<<< orphan*/  FUNC0 (struct nvsp_message*,int /*<<< orphan*/ ,int) ; 
 struct net_device_context* FUNC1 (struct net_device*) ; 
 struct netvsc_device* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct nvsp_message*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct nvsp_message*,int,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct net_device *ndev, bool vf)
{
	struct net_device_context *net_device_ctx = FUNC1(ndev);
	struct hv_device *dev = net_device_ctx->device_ctx;
	struct netvsc_device *nv_dev = FUNC2(net_device_ctx->nvdev);
	struct nvsp_message *init_pkt = &nv_dev->channel_init_pkt;

	FUNC0(init_pkt, 0, sizeof(struct nvsp_message));
	init_pkt->hdr.msg_type = NVSP_MSG4_TYPE_SWITCH_DATA_PATH;
	if (vf)
		init_pkt->msg.v4_msg.active_dp.active_datapath =
			NVSP_DATAPATH_VF;
	else
		init_pkt->msg.v4_msg.active_dp.active_datapath =
			NVSP_DATAPATH_SYNTHETIC;

	FUNC3(ndev, init_pkt);

	FUNC4(dev->channel, init_pkt,
			       sizeof(struct nvsp_message),
			       (unsigned long)init_pkt,
			       VM_PKT_DATA_INBAND, 0);
}