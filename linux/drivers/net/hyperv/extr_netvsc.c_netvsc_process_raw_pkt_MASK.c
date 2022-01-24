#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vmpacket_descriptor {int type; int /*<<< orphan*/  trans_id; } ;
struct vmbus_channel {int dummy; } ;
struct nvsp_message {int dummy; } ;
struct netvsc_device {int dummy; } ;
struct netvsc_channel {struct vmbus_channel* channel; } ;
struct net_device {int dummy; } ;
struct hv_device {int dummy; } ;

/* Variables and functions */
#define  VM_PKT_COMP 130 
#define  VM_PKT_DATA_INBAND 129 
#define  VM_PKT_DATA_USING_XFER_PAGES 128 
 struct nvsp_message* FUNC0 (struct vmpacket_descriptor const*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net_device*,struct netvsc_device*,struct netvsc_channel*,struct vmpacket_descriptor const*,struct nvsp_message const*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct nvsp_message const*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct netvsc_device*,struct vmbus_channel*,struct vmpacket_descriptor const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,struct vmbus_channel*,struct nvsp_message const*) ; 

__attribute__((used)) static int FUNC6(struct hv_device *device,
				  struct netvsc_channel *nvchan,
				  struct netvsc_device *net_device,
				  struct net_device *ndev,
				  const struct vmpacket_descriptor *desc,
				  int budget)
{
	struct vmbus_channel *channel = nvchan->channel;
	const struct nvsp_message *nvmsg = FUNC0(desc);

	FUNC5(ndev, channel, nvmsg);

	switch (desc->type) {
	case VM_PKT_COMP:
		FUNC4(ndev, net_device, channel,
				       desc, budget);
		break;

	case VM_PKT_DATA_USING_XFER_PAGES:
		return FUNC2(ndev, net_device, nvchan,
				      desc, nvmsg);
		break;

	case VM_PKT_DATA_INBAND:
		FUNC3(ndev, nvmsg);
		break;

	default:
		FUNC1(ndev, "unhandled packet type %d, tid %llx\n",
			   desc->type, desc->trans_id);
		break;
	}

	return 0;
}