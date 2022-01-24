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
struct netvsc_device_info {int dummy; } ;
struct netvsc_device {scalar_t__ destroy; } ;
struct net_device_context {int /*<<< orphan*/  nvdev; int /*<<< orphan*/  vf_netdev; } ;
struct net_device {int mtu; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct netvsc_device_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 struct net_device_context* FUNC3 (struct net_device*) ; 
 int FUNC4 (struct net_device*,struct netvsc_device_info*) ; 
 int FUNC5 (struct net_device*,struct netvsc_device*) ; 
 struct netvsc_device_info* FUNC6 (struct netvsc_device*) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct net_device *ndev, int mtu)
{
	struct net_device_context *ndevctx = FUNC3(ndev);
	struct net_device *vf_netdev = FUNC7(ndevctx->vf_netdev);
	struct netvsc_device *nvdev = FUNC7(ndevctx->nvdev);
	int orig_mtu = ndev->mtu;
	struct netvsc_device_info *device_info;
	int ret = 0;

	if (!nvdev || nvdev->destroy)
		return -ENODEV;

	device_info = FUNC6(nvdev);

	if (!device_info)
		return -ENOMEM;

	/* Change MTU of underlying VF netdev first. */
	if (vf_netdev) {
		ret = FUNC0(vf_netdev, mtu);
		if (ret)
			goto out;
	}

	ret = FUNC5(ndev, nvdev);
	if (ret)
		goto rollback_vf;

	ndev->mtu = mtu;

	ret = FUNC4(ndev, device_info);
	if (!ret)
		goto out;

	/* Attempt rollback to original MTU */
	ndev->mtu = orig_mtu;

	if (FUNC4(ndev, device_info))
		FUNC2(ndev, "restoring mtu failed\n");
rollback_vf:
	if (vf_netdev)
		FUNC0(vf_netdev, orig_mtu);

out:
	FUNC1(device_info);
	return ret;
}