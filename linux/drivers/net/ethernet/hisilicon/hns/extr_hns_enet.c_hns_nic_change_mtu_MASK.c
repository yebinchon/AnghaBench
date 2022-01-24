#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int mtu; } ;
struct hns_nic_priv {scalar_t__ enet_ver; struct hnae_handle* ae_handle; } ;
struct hnae_handle {TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_mtu ) (struct hnae_handle*,int) ;} ;

/* Variables and functions */
 scalar_t__ AE_VERSION_1 ; 
 int BD_SIZE_2048_MAX_MTU ; 
 int EINVAL ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct hnae_handle*) ; 
 int /*<<< orphan*/  FUNC1 (struct hnae_handle*) ; 
 int FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*,...) ; 
 struct hns_nic_priv* FUNC7 (struct net_device*) ; 
 int FUNC8 (struct net_device*) ; 
 int FUNC9 (struct hnae_handle*,int) ; 

__attribute__((used)) static int FUNC10(struct net_device *ndev, int new_mtu)
{
	struct hns_nic_priv *priv = FUNC7(ndev);
	struct hnae_handle *h = priv->ae_handle;
	bool if_running = FUNC8(ndev);
	int ret;

	/* MTU < 68 is an error and causes problems on some kernels */
	if (new_mtu < 68)
		return -EINVAL;

	/* MTU no change */
	if (new_mtu == ndev->mtu)
		return 0;

	if (!h->dev->ops->set_mtu)
		return -ENOTSUPP;

	if (if_running) {
		(void)FUNC4(ndev);
		FUNC5(100);
	}

	if (priv->enet_ver != AE_VERSION_1 &&
	    ndev->mtu <= BD_SIZE_2048_MAX_MTU &&
	    new_mtu > BD_SIZE_2048_MAX_MTU) {
		/* update desc */
		FUNC0(h);

		/* clear the package which the chip has fetched */
		ret = FUNC2(ndev);

		/* the page offset must be consist with desc */
		FUNC1(h);

		if (ret) {
			FUNC6(ndev, "clear the fetched desc fail\n");
			goto out;
		}
	}

	ret = h->dev->ops->set_mtu(h, new_mtu);
	if (ret) {
		FUNC6(ndev, "set mtu fail, return value %d\n",
			   ret);
		goto out;
	}

	/* finally, set new mtu to netdevice */
	ndev->mtu = new_mtu;

out:
	if (if_running) {
		if (FUNC3(ndev)) {
			FUNC6(ndev, "hns net open fail\n");
			ret = -EINVAL;
		}
	}

	return ret;
}