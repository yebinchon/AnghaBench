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
struct net_device_context {int /*<<< orphan*/  vf_netdev; int /*<<< orphan*/  nvdev; } ;
struct net_device {scalar_t__ addr_len; int /*<<< orphan*/  features; int /*<<< orphan*/  wanted_features; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ ETH_ALEN ; 
 int NOTIFY_DONE ; 
 int NOTIFY_OK ; 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct net_device* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 struct net_device_context* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 scalar_t__ FUNC9 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct net_device*) ; 
 struct netvsc_device* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct net_device *vf_netdev)
{
	struct net_device_context *net_device_ctx;
	struct netvsc_device *netvsc_dev;
	struct net_device *ndev;
	int ret;

	if (vf_netdev->addr_len != ETH_ALEN)
		return NOTIFY_DONE;

	ndev = FUNC3(vf_netdev);
	if (!ndev)
		return NOTIFY_DONE;

	net_device_ctx = FUNC7(ndev);
	netvsc_dev = FUNC11(net_device_ctx->nvdev);
	if (!netvsc_dev || FUNC11(net_device_ctx->vf_netdev))
		return NOTIFY_DONE;

	/* if synthetic interface is a different namespace,
	 * then move the VF to that namespace; join will be
	 * done again in that context.
	 */
	if (!FUNC4(FUNC2(ndev), FUNC2(vf_netdev))) {
		ret = FUNC0(vf_netdev,
					       FUNC2(ndev), "eth%d");
		if (ret)
			FUNC5(vf_netdev,
				   "could not move to same namespace as %s: %d\n",
				   ndev->name, ret);
		else
			FUNC6(vf_netdev,
				    "VF moved to namespace with: %s\n",
				    ndev->name);
		return NOTIFY_DONE;
	}

	FUNC6(ndev, "VF registering: %s\n", vf_netdev->name);

	if (FUNC9(vf_netdev, ndev) != 0)
		return NOTIFY_DONE;

	FUNC1(vf_netdev);
	FUNC10(net_device_ctx->vf_netdev, vf_netdev);

	vf_netdev->wanted_features = ndev->features;
	FUNC8(vf_netdev);

	return NOTIFY_OK;
}