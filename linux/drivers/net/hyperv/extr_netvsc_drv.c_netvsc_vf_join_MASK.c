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
struct net_device_context {int /*<<< orphan*/  vf_takeover; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_SLAVE ; 
 int /*<<< orphan*/  NETDEV_JOIN ; 
 int /*<<< orphan*/  VF_TAKEOVER_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct net_device*,struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct net_device_context* FUNC4 (struct net_device*) ; 
 int FUNC5 (struct net_device*,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  netvsc_vf_handle_frame ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct net_device *vf_netdev,
			  struct net_device *ndev)
{
	struct net_device_context *ndev_ctx = FUNC4(ndev);
	int ret;

	ret = FUNC5(vf_netdev,
					 netvsc_vf_handle_frame, ndev);
	if (ret != 0) {
		FUNC1(vf_netdev,
			   "can not register netvsc VF receive handler (err = %d)\n",
			   ret);
		goto rx_handler_failed;
	}

	ret = FUNC3(vf_netdev, ndev,
					   NULL, NULL, NULL);
	if (ret != 0) {
		FUNC1(vf_netdev,
			   "can not set master device %s (err = %d)\n",
			   ndev->name, ret);
		goto upper_link_failed;
	}

	/* set slave flag before open to prevent IPv6 addrconf */
	vf_netdev->flags |= IFF_SLAVE;

	FUNC7(&ndev_ctx->vf_takeover, VF_TAKEOVER_INT);

	FUNC0(NETDEV_JOIN, vf_netdev);

	FUNC2(vf_netdev, "joined to %s\n", ndev->name);
	return 0;

upper_link_failed:
	FUNC6(vf_netdev);
rx_handler_failed:
	return ret;
}