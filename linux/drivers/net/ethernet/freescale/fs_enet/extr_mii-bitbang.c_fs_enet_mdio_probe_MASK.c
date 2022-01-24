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
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mii_bus {char* name; TYPE_1__* parent; int /*<<< orphan*/  phy_mask; } ;
struct TYPE_4__ {int /*<<< orphan*/ * ops; } ;
struct bb_info {int /*<<< orphan*/  dir; TYPE_2__ ctrl; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct mii_bus* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  bb_ops ; 
 int /*<<< orphan*/  FUNC1 (struct mii_bus*) ; 
 int FUNC2 (struct mii_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bb_info*) ; 
 struct bb_info* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mii_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct mii_bus*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *ofdev)
{
	struct mii_bus *new_bus;
	struct bb_info *bitbang;
	int ret = -ENOMEM;

	bitbang = FUNC5(sizeof(struct bb_info), GFP_KERNEL);
	if (!bitbang)
		goto out;

	bitbang->ctrl.ops = &bb_ops;

	new_bus = FUNC0(&bitbang->ctrl);
	if (!new_bus)
		goto out_free_priv;

	new_bus->name = "CPM2 Bitbanged MII",

	ret = FUNC2(new_bus, ofdev->dev.of_node);
	if (ret)
		goto out_free_bus;

	new_bus->phy_mask = ~0;

	new_bus->parent = &ofdev->dev;
	FUNC7(ofdev, new_bus);

	ret = FUNC6(new_bus, ofdev->dev.of_node);
	if (ret)
		goto out_unmap_regs;

	return 0;

out_unmap_regs:
	FUNC3(bitbang->dir);
out_free_bus:
	FUNC1(new_bus);
out_free_priv:
	FUNC4(bitbang);
out:
	return ret;
}