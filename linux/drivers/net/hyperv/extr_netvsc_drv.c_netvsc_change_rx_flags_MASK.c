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
struct net_device_context {int /*<<< orphan*/  vf_netdev; } ;
struct net_device {int flags; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int) ; 
 struct net_device_context* FUNC2 (struct net_device*) ; 
 struct net_device* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct net_device *net, int change)
{
	struct net_device_context *ndev_ctx = FUNC2(net);
	struct net_device *vf_netdev = FUNC3(ndev_ctx->vf_netdev);
	int inc;

	if (!vf_netdev)
		return;

	if (change & IFF_PROMISC) {
		inc = (net->flags & IFF_PROMISC) ? 1 : -1;
		FUNC1(vf_netdev, inc);
	}

	if (change & IFF_ALLMULTI) {
		inc = (net->flags & IFF_ALLMULTI) ? 1 : -1;
		FUNC0(vf_netdev, inc);
	}
}