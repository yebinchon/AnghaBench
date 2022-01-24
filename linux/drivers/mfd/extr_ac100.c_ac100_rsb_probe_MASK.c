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
struct sunxi_rsb_device {int /*<<< orphan*/  dev; } ;
struct ac100_dev {int /*<<< orphan*/ * dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLATFORM_DEVID_NONE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ac100_cells ; 
 int /*<<< orphan*/  ac100_regmap_config ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 struct ac100_dev* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sunxi_rsb_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sunxi_rsb_device*,struct ac100_dev*) ; 

__attribute__((used)) static int FUNC8(struct sunxi_rsb_device *rdev)
{
	struct ac100_dev *ac100;
	int ret;

	ac100 = FUNC4(&rdev->dev, sizeof(*ac100), GFP_KERNEL);
	if (!ac100)
		return -ENOMEM;

	ac100->dev = &rdev->dev;
	FUNC7(rdev, ac100);

	ac100->regmap = FUNC6(rdev, &ac100_regmap_config);
	if (FUNC1(ac100->regmap)) {
		ret = FUNC2(ac100->regmap);
		FUNC3(ac100->dev, "regmap init failed: %d\n", ret);
		return ret;
	}

	ret = FUNC5(ac100->dev, PLATFORM_DEVID_NONE, ac100_cells,
				   FUNC0(ac100_cells), NULL, 0, NULL);
	if (ret) {
		FUNC3(ac100->dev, "failed to add MFD devices: %d\n", ret);
		return ret;
	}

	return 0;
}