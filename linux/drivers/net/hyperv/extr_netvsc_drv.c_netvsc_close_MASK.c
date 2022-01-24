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
struct netvsc_device {int dummy; } ;
struct net_device_context {int /*<<< orphan*/  nvdev; int /*<<< orphan*/  vf_netdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,...) ; 
 struct net_device_context* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct netvsc_device*,struct net_device*) ; 
 int FUNC4 (struct netvsc_device*) ; 
 int FUNC5 (struct netvsc_device*) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct net_device *net)
{
	struct net_device_context *net_device_ctx = FUNC2(net);
	struct net_device *vf_netdev
		= FUNC6(net_device_ctx->vf_netdev);
	struct netvsc_device *nvdev = FUNC6(net_device_ctx->nvdev);
	int ret;

	FUNC3(nvdev, net);

	/* No need to close rndis filter if it is removed already */
	if (!nvdev)
		return 0;

	ret = FUNC5(nvdev);
	if (ret != 0) {
		FUNC1(net, "unable to close device (ret %d).\n", ret);
		return ret;
	}

	ret = FUNC4(nvdev);
	if (ret)
		FUNC1(net, "Ring buffer not empty after closing rndis\n");

	if (vf_netdev)
		FUNC0(vf_netdev);

	return ret;
}