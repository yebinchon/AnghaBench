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
struct net_device {int dummy; } ;
struct device_node {int dummy; } ;
struct ag71xx {int /*<<< orphan*/  phy_if_mode; struct net_device* ndev; TYPE_2__* pdev; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  ag71xx_phy_link_adjust ; 
 int /*<<< orphan*/  FUNC0 (struct ag71xx*,int /*<<< orphan*/ ,struct net_device*,char*,...) ; 
 struct device_node* FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 struct device_node* FUNC3 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 struct phy_device* FUNC4 (struct net_device*,struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct device_node*) ; 
 int FUNC6 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct phy_device*) ; 
 int /*<<< orphan*/  probe ; 

__attribute__((used)) static int FUNC8(struct ag71xx *ag)
{
	struct device_node *np = ag->pdev->dev.of_node;
	struct net_device *ndev = ag->ndev;
	struct device_node *phy_node;
	struct phy_device *phydev;
	int ret;

	if (FUNC5(np)) {
		ret = FUNC6(np);
		if (ret < 0) {
			FUNC0(ag, probe, ndev, "Failed to register fixed PHY link: %d\n",
				  ret);
			return ret;
		}

		phy_node = FUNC1(np);
	} else {
		phy_node = FUNC3(np, "phy-handle", 0);
	}

	if (!phy_node) {
		FUNC0(ag, probe, ndev, "Could not find valid phy node\n");
		return -ENODEV;
	}

	phydev = FUNC4(ag->ndev, phy_node, ag71xx_phy_link_adjust,
				0, ag->phy_if_mode);

	FUNC2(phy_node);

	if (!phydev) {
		FUNC0(ag, probe, ndev, "Could not connect to PHY device\n");
		return -ENODEV;
	}

	FUNC7(phydev);

	return 0;
}