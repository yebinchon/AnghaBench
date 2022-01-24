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
struct ucc_geth_private {TYPE_2__* ug_info; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct net_device {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  phy_node; int /*<<< orphan*/  tbi_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct ucc_geth_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 scalar_t__ FUNC4 (struct device_node*) ; 
 struct net_device* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct ucc_geth_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct platform_device* ofdev)
{
	struct net_device *dev = FUNC5(ofdev);
	struct ucc_geth_private *ugeth = FUNC1(dev);
	struct device_node *np = ofdev->dev.of_node;

	FUNC7(dev);
	FUNC0(dev);
	FUNC6(ugeth);
	if (FUNC4(np))
		FUNC3(np);
	FUNC2(ugeth->ug_info->tbi_node);
	FUNC2(ugeth->ug_info->phy_node);

	return 0;
}