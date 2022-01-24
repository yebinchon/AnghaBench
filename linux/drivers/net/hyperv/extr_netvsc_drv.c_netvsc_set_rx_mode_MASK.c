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
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct net_device*) ; 
 struct net_device_context* FUNC2 (struct net_device*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct netvsc_device*) ; 

__attribute__((used)) static void FUNC7(struct net_device *net)
{
	struct net_device_context *ndev_ctx = FUNC2(net);
	struct net_device *vf_netdev;
	struct netvsc_device *nvdev;

	FUNC4();
	vf_netdev = FUNC3(ndev_ctx->vf_netdev);
	if (vf_netdev) {
		FUNC1(vf_netdev, net);
		FUNC0(vf_netdev, net);
	}

	nvdev = FUNC3(ndev_ctx->nvdev);
	if (nvdev)
		FUNC6(nvdev);
	FUNC5();
}