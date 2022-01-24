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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct netvsc_device {int dummy; } ;
struct net_device_context {int /*<<< orphan*/  nvdev; int /*<<< orphan*/  vf_netdev; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int FUNC0 (struct net_device*,struct sockaddr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,void*) ; 
 int FUNC2 (struct net_device*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device_context* FUNC4 (struct net_device*) ; 
 int FUNC5 (struct netvsc_device*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct net_device *ndev, void *p)
{
	struct net_device_context *ndc = FUNC4(ndev);
	struct net_device *vf_netdev = FUNC6(ndc->vf_netdev);
	struct netvsc_device *nvdev = FUNC6(ndc->nvdev);
	struct sockaddr *addr = p;
	int err;

	err = FUNC2(ndev, p);
	if (err)
		return err;

	if (!nvdev)
		return -ENODEV;

	if (vf_netdev) {
		err = FUNC0(vf_netdev, addr, NULL);
		if (err)
			return err;
	}

	err = FUNC5(nvdev, addr->sa_data);
	if (!err) {
		FUNC1(ndev, p);
	} else if (vf_netdev) {
		/* rollback change on VF */
		FUNC3(addr->sa_data, ndev->dev_addr, ETH_ALEN);
		FUNC0(vf_netdev, addr, NULL);
	}

	return err;
}