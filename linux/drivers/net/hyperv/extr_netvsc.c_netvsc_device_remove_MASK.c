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
struct netvsc_device {int num_chn; TYPE_1__* chan_table; } ;
struct net_device_context {int /*<<< orphan*/  nvdev; } ;
struct net_device {int dummy; } ;
struct hv_device {int /*<<< orphan*/  channel; } ;
struct TYPE_2__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ VERSION_WIN10 ; 
 int /*<<< orphan*/  FUNC1 (struct netvsc_device*) ; 
 struct net_device* FUNC2 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 struct net_device_context* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct hv_device*,struct netvsc_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct hv_device*,struct netvsc_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct hv_device*,struct netvsc_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct hv_device*,struct netvsc_device*,struct net_device*) ; 
 struct netvsc_device* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ vmbus_proto_version ; 

void FUNC12(struct hv_device *device)
{
	struct net_device *ndev = FUNC2(device);
	struct net_device_context *net_device_ctx = FUNC4(ndev);
	struct netvsc_device *net_device
		= FUNC10(net_device_ctx->nvdev);
	int i;

	/*
	 * Revoke receive buffer. If host is pre-Win2016 then tear down
	 * receive buffer GPADL. Do the same for send buffer.
	 */
	FUNC6(device, net_device, ndev);
	if (vmbus_proto_version < VERSION_WIN10)
		FUNC8(device, net_device, ndev);

	FUNC7(device, net_device, ndev);
	if (vmbus_proto_version < VERSION_WIN10)
		FUNC9(device, net_device, ndev);

	FUNC0(net_device_ctx->nvdev, NULL);

	/* And disassociate NAPI context from device */
	for (i = 0; i < net_device->num_chn; i++)
		FUNC5(&net_device->chan_table[i].napi);

	/*
	 * At this point, no one should be accessing net_device
	 * except in here
	 */
	FUNC3(ndev, "net device safe to remove\n");

	/* Now, we can close the channel safely */
	FUNC11(device->channel);

	/*
	 * If host is Win2016 or higher then we do the GPADL tear down
	 * here after VMBus is closed.
	*/
	if (vmbus_proto_version >= VERSION_WIN10) {
		FUNC8(device, net_device, ndev);
		FUNC9(device, net_device, ndev);
	}

	/* Release all resources */
	FUNC1(net_device);
}