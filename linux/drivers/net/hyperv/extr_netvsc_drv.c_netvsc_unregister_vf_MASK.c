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
struct net_device_context {int /*<<< orphan*/  vf_netdev; int /*<<< orphan*/  vf_takeover; } ;
struct net_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int NOTIFY_DONE ; 
 int NOTIFY_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct net_device* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 struct net_device_context* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct net_device *vf_netdev)
{
	struct net_device *ndev;
	struct net_device_context *net_device_ctx;

	ndev = FUNC3(vf_netdev);
	if (!ndev)
		return NOTIFY_DONE;

	net_device_ctx = FUNC5(ndev);
	FUNC1(&net_device_ctx->vf_takeover);

	FUNC4(ndev, "VF unregistering: %s\n", vf_netdev->name);

	FUNC6(vf_netdev);
	FUNC7(vf_netdev, ndev);
	FUNC0(net_device_ctx->vf_netdev, NULL);
	FUNC2(vf_netdev);

	return NOTIFY_OK;
}