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
struct rndis_device {int /*<<< orphan*/  link_state; } ;
struct netvsc_device {struct rndis_device* extension; } ;
struct net_device_context {int /*<<< orphan*/  nvdev; int /*<<< orphan*/  vf_netdev; } ;
struct net_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,int) ; 
 struct net_device_context* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct netvsc_device*,struct net_device*) ; 
 int FUNC7 (struct netvsc_device*) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct net_device *net)
{
	struct net_device_context *ndev_ctx = FUNC2(net);
	struct net_device *vf_netdev = FUNC8(ndev_ctx->vf_netdev);
	struct netvsc_device *nvdev = FUNC8(ndev_ctx->nvdev);
	struct rndis_device *rdev;
	int ret = 0;

	FUNC4(net);

	/* Open up the device */
	ret = FUNC7(nvdev);
	if (ret != 0) {
		FUNC1(net, "unable to open device (ret %d).\n", ret);
		return ret;
	}

	rdev = nvdev->extension;
	if (!rdev->link_state) {
		FUNC5(net);
		FUNC6(nvdev, net);
	}

	if (vf_netdev) {
		/* Setting synthetic device up transparently sets
		 * slave as up. If open fails, then slave will be
		 * still be offline (and not used).
		 */
		ret = FUNC0(vf_netdev, NULL);
		if (ret)
			FUNC3(net,
				    "unable to open slave: %s: %d\n",
				    vf_netdev->name, ret);
	}
	return 0;
}