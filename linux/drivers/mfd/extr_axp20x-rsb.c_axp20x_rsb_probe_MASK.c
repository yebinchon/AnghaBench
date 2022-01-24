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
struct sunxi_rsb_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct axp20x_dev {int /*<<< orphan*/  regmap; int /*<<< orphan*/  regmap_cfg; int /*<<< orphan*/  irq; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct axp20x_dev*) ; 
 int FUNC3 (struct axp20x_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct axp20x_dev*) ; 
 struct axp20x_dev* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sunxi_rsb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct sunxi_rsb_device *rdev)
{
	struct axp20x_dev *axp20x;
	int ret;

	axp20x = FUNC6(&rdev->dev, sizeof(*axp20x), GFP_KERNEL);
	if (!axp20x)
		return -ENOMEM;

	axp20x->dev = &rdev->dev;
	axp20x->irq = rdev->irq;
	FUNC5(&rdev->dev, axp20x);

	ret = FUNC3(axp20x);
	if (ret)
		return ret;

	axp20x->regmap = FUNC7(rdev, axp20x->regmap_cfg);
	if (FUNC0(axp20x->regmap)) {
		ret = FUNC1(axp20x->regmap);
		FUNC4(&rdev->dev, "regmap init failed: %d\n", ret);
		return ret;
	}

	return FUNC2(axp20x);
}