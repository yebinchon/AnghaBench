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
struct netvsc_device {int /*<<< orphan*/  subchan_work; } ;
struct net_device_context {int /*<<< orphan*/  vf_stats; int /*<<< orphan*/  list; int /*<<< orphan*/  vf_netdev; int /*<<< orphan*/  nvdev; int /*<<< orphan*/  dwork; } ;
struct net_device {int dummy; } ;
struct hv_device {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC5 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct hv_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct net_device_context* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct hv_device*,struct netvsc_device*) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 

__attribute__((used)) static int FUNC15(struct hv_device *dev)
{
	struct net_device_context *ndev_ctx;
	struct net_device *vf_netdev, *net;
	struct netvsc_device *nvdev;

	net = FUNC5(dev);
	if (net == NULL) {
		FUNC2(&dev->device, "No net device to remove\n");
		return 0;
	}

	ndev_ctx = FUNC8(net);

	FUNC0(&ndev_ctx->dwork);

	FUNC12();
	nvdev = FUNC11(ndev_ctx->nvdev);
	if (nvdev)
		FUNC1(&nvdev->subchan_work);

	/*
	 * Call to the vsc driver to let it know that the device is being
	 * removed. Also blocks mtu and channel changes.
	 */
	vf_netdev = FUNC11(ndev_ctx->vf_netdev);
	if (vf_netdev)
		FUNC9(vf_netdev);

	if (nvdev)
		FUNC10(dev, nvdev);

	FUNC14(net);
	FUNC7(&ndev_ctx->list);

	FUNC13();

	FUNC6(dev, NULL);

	FUNC4(ndev_ctx->vf_stats);
	FUNC3(net);
	return 0;
}