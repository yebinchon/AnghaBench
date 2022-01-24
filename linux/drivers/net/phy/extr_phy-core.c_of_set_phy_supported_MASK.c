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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;
struct phy_device {TYPE_2__ mdio; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_OF_MDIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

void FUNC3(struct phy_device *phydev)
{
	struct device_node *node = phydev->mdio.dev.of_node;
	u32 max_speed;

	if (!FUNC0(CONFIG_OF_MDIO))
		return;

	if (!node)
		return;

	if (!FUNC2(node, "max-speed", &max_speed))
		FUNC1(phydev, max_speed);
}