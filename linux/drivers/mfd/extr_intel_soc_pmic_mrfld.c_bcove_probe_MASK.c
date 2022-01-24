#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct intel_soc_pmic {int /*<<< orphan*/  regmap; struct device* dev; } ;
struct TYPE_5__ {int start; int end; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLATFORM_DEVID_NONE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* bcove_dev ; 
 int /*<<< orphan*/  bcove_regmap_config ; 
 struct intel_soc_pmic* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,TYPE_1__*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ *,struct intel_soc_pmic*,int /*<<< orphan*/ *) ; 
 TYPE_1__* irq_level2_resources ; 
 int FUNC6 (struct platform_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct intel_soc_pmic*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct intel_soc_pmic *pmic;
	unsigned int i;
	int ret;

	pmic = FUNC3(dev, sizeof(*pmic), GFP_KERNEL);
	if (!pmic)
		return -ENOMEM;

	FUNC7(pdev, pmic);
	pmic->dev = &pdev->dev;

	pmic->regmap = FUNC5(dev, NULL, pmic, &bcove_regmap_config);
	if (FUNC1(pmic->regmap))
		return FUNC2(pmic->regmap);

	for (i = 0; i < FUNC0(irq_level2_resources); i++) {
		ret = FUNC6(pdev, i);
		if (ret < 0)
			return ret;

		irq_level2_resources[i].start = ret;
		irq_level2_resources[i].end = ret;
	}

	return FUNC4(dev, PLATFORM_DEVID_NONE,
				    bcove_dev, FUNC0(bcove_dev),
				    NULL, 0, NULL);
}