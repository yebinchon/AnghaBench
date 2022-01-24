#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xpnet_message {int dummy; } ;
typedef  enum xp_retval { ____Placeholder_xp_retval } xp_retval ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int XPC_NET_CHANNEL ; 
 int /*<<< orphan*/  FUNC1 (short,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (short,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*,short) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,short) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
#define  xpConnected 129 
#define  xpMsgReceived 128 
 short xp_max_npartitions ; 
 int /*<<< orphan*/  xpnet ; 
 int /*<<< orphan*/  xpnet_broadcast_lock ; 
 scalar_t__ xpnet_broadcast_partitions ; 
 TYPE_1__* xpnet_device ; 
 int /*<<< orphan*/  FUNC9 (short,int,struct xpnet_message*) ; 

__attribute__((used)) static void
FUNC10(enum xp_retval reason, short partid, int channel,
			  void *data, void *key)
{
	FUNC0(partid < 0 || partid >= xp_max_npartitions);
	FUNC0(channel != XPC_NET_CHANNEL);

	switch (reason) {
	case xpMsgReceived:	/* message received */
		FUNC0(data == NULL);

		FUNC9(partid, channel, (struct xpnet_message *)data);
		break;

	case xpConnected:	/* connection completed to a partition */
		FUNC7(&xpnet_broadcast_lock);
		FUNC2(partid, xpnet_broadcast_partitions);
		FUNC8(&xpnet_broadcast_lock);

		FUNC6(xpnet_device);

		FUNC4(xpnet, "%s connected to partition %d\n",
			xpnet_device->name, partid);
		break;

	default:
		FUNC7(&xpnet_broadcast_lock);
		FUNC1(partid, xpnet_broadcast_partitions);
		FUNC8(&xpnet_broadcast_lock);

		if (FUNC3((unsigned long *)xpnet_broadcast_partitions,
				 xp_max_npartitions)) {
			FUNC5(xpnet_device);
		}

		FUNC4(xpnet, "%s disconnected from partition %d\n",
			xpnet_device->name, partid);
		break;
	}
}