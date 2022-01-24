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
struct emac_instance {int /*<<< orphan*/  mii_bus; TYPE_2__* ofdev; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int FUNC0 (struct emac_instance*) ; 
 int FUNC1 (struct emac_instance*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 struct device_node* FUNC4 (struct device_node*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct emac_instance *dev)
{
	struct device_node *np = dev->ofdev->dev.of_node;
	struct device_node *phy_handle;
	int res = 1;

	phy_handle = FUNC4(np, "phy-handle", 0);

	if (phy_handle) {
		res = FUNC0(dev);
		if (!res) {
			res = FUNC1(dev, phy_handle);
			if (res)
				FUNC2(dev->mii_bus);
		}
	}

	FUNC3(phy_handle);
	return res;
}