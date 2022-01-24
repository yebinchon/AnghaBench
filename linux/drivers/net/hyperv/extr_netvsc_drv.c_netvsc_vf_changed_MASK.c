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
struct net_device_context {int /*<<< orphan*/  nvdev; } ;
struct net_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int NOTIFY_DONE ; 
 int NOTIFY_OK ; 
 struct net_device* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,char*,int /*<<< orphan*/ ) ; 
 struct net_device_context* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int) ; 
 struct netvsc_device* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *vf_netdev)
{
	struct net_device_context *net_device_ctx;
	struct netvsc_device *netvsc_dev;
	struct net_device *ndev;
	bool vf_is_up = FUNC3(vf_netdev);

	ndev = FUNC0(vf_netdev);
	if (!ndev)
		return NOTIFY_DONE;

	net_device_ctx = FUNC2(ndev);
	netvsc_dev = FUNC5(net_device_ctx->nvdev);
	if (!netvsc_dev)
		return NOTIFY_DONE;

	FUNC4(ndev, vf_is_up);
	FUNC1(ndev, "Data path switched %s VF: %s\n",
		    vf_is_up ? "to" : "from", vf_netdev->name);

	return NOTIFY_OK;
}