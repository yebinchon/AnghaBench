#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;
struct mdio_device {TYPE_2__ dev; } ;
struct TYPE_7__ {int /*<<< orphan*/ * ops; TYPE_2__* dev; int /*<<< orphan*/  regmap; } ;
struct lan9303_mdio {TYPE_1__ chip; struct mdio_device* device; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct lan9303_mdio*) ; 
 struct lan9303_mdio* FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,struct lan9303_mdio*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lan9303_mdio_phy_ops ; 
 int /*<<< orphan*/  lan9303_mdio_regmap_config ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct mdio_device *mdiodev)
{
	struct lan9303_mdio *sw_dev;
	int ret;

	sw_dev = FUNC5(&mdiodev->dev, sizeof(struct lan9303_mdio),
			      GFP_KERNEL);
	if (!sw_dev)
		return -ENOMEM;

	sw_dev->chip.regmap = FUNC6(&mdiodev->dev, NULL, sw_dev,
					       &lan9303_mdio_regmap_config);
	if (FUNC0(sw_dev->chip.regmap)) {
		ret = FUNC1(sw_dev->chip.regmap);
		FUNC2(&mdiodev->dev, "regmap init failed: %d\n", ret);
		return ret;
	}

	/* link forward and backward */
	sw_dev->device = mdiodev;
	FUNC4(&mdiodev->dev, sw_dev);
	sw_dev->chip.dev = &mdiodev->dev;

	sw_dev->chip.ops = &lan9303_mdio_phy_ops;

	ret = FUNC7(&sw_dev->chip, mdiodev->dev.of_node);
	if (ret != 0)
		return ret;

	FUNC3(&mdiodev->dev, "LAN9303 MDIO driver loaded successfully\n");

	return 0;
}