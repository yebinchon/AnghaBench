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
struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;
struct hnae3_handle {TYPE_1__* pdev; TYPE_2__* ae_algo; } ;
struct hnae3_ae_ops {int (* get_autoneg ) (struct hnae3_handle*) ;int (* restart_autoneg ) (struct hnae3_handle*) ;} ;
struct TYPE_4__ {struct hnae3_ae_ops* ops; } ;
struct TYPE_3__ {int revision; } ;

/* Variables and functions */
 int AUTONEG_ENABLE ; 
 int EBUSY ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  drv ; 
 int FUNC0 (struct phy_device*) ; 
 struct hnae3_handle* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct hnae3_handle*,int /*<<< orphan*/ ,struct net_device*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int FUNC6 (struct hnae3_handle*) ; 
 int FUNC7 (struct hnae3_handle*) ; 

__attribute__((used)) static int FUNC8(struct net_device *netdev)
{
	struct hnae3_handle *handle = FUNC1(netdev);
	const struct hnae3_ae_ops *ops = handle->ae_algo->ops;
	struct phy_device *phy = netdev->phydev;
	int autoneg;

	if (!FUNC5(netdev))
		return 0;

	if (FUNC2(netdev)) {
		FUNC3(netdev, "dev resetting!");
		return -EBUSY;
	}

	if (!ops->get_autoneg || !ops->restart_autoneg)
		return -EOPNOTSUPP;

	autoneg = ops->get_autoneg(handle);
	if (autoneg != AUTONEG_ENABLE) {
		FUNC3(netdev,
			   "Autoneg is off, don't support to restart it\n");
		return -EINVAL;
	}

	FUNC4(handle, drv, netdev,
		  "nway reset (using %s)\n", phy ? "phy" : "mac");

	if (phy)
		return FUNC0(phy);

	if (handle->pdev->revision == 0x20)
		return -EOPNOTSUPP;

	return ops->restart_autoneg(handle);
}