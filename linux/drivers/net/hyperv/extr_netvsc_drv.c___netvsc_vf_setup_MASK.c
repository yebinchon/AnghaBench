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
struct net_device {int mtu; int flags; } ;

/* Variables and functions */
 int IFF_SLAVE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct net_device*) ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (struct net_device*) ; 

__attribute__((used)) static void FUNC9(struct net_device *ndev,
			      struct net_device *vf_netdev)
{
	int ret;

	/* Align MTU of VF with master */
	ret = FUNC3(vf_netdev, ndev->mtu);
	if (ret)
		FUNC5(vf_netdev,
			    "unable to change mtu to %u\n", ndev->mtu);

	/* set multicast etc flags on VF */
	FUNC0(vf_netdev, ndev->flags | IFF_SLAVE, NULL);

	/* sync address list from ndev to VF */
	FUNC6(ndev);
	FUNC4(vf_netdev, ndev);
	FUNC1(vf_netdev, ndev);
	FUNC7(ndev);

	if (FUNC8(ndev)) {
		ret = FUNC2(vf_netdev, NULL);
		if (ret)
			FUNC5(vf_netdev,
				    "unable to open: %d\n", ret);
	}
}