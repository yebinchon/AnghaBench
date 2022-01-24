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
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mt6397_chip {unsigned int chip_id; scalar_t__ irq; int /*<<< orphan*/  irq_domain; int /*<<< orphan*/  regmap; TYPE_1__* dev; } ;
struct chip_data {unsigned int cid_shift; int /*<<< orphan*/  cid_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  MT6323_CHIP_ID 130 
#define  MT6391_CHIP_ID 129 
#define  MT6397_CHIP_ID 128 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mt6397_chip* FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mt6323_devs ; 
 int /*<<< orphan*/  mt6397_devs ; 
 int FUNC6 (struct mt6397_chip*) ; 
 struct chip_data* FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct mt6397_chip*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	int ret;
	unsigned int id;
	struct mt6397_chip *pmic;
	const struct chip_data *pmic_core;

	pmic = FUNC3(&pdev->dev, sizeof(*pmic), GFP_KERNEL);
	if (!pmic)
		return -ENOMEM;

	pmic->dev = &pdev->dev;

	/*
	 * mt6397 MFD is child device of soc pmic wrapper.
	 * Regmap is set from its parent.
	 */
	pmic->regmap = FUNC2(pdev->dev.parent, NULL);
	if (!pmic->regmap)
		return -ENODEV;

	pmic_core = FUNC7(&pdev->dev);
	if (!pmic_core)
		return -ENODEV;

	ret = FUNC10(pmic->regmap, pmic_core->cid_addr, &id);
	if (ret) {
		FUNC1(&pdev->dev, "Failed to read chip id: %d\n", ret);
		return ret;
	}

	pmic->chip_id = (id >> pmic_core->cid_shift) & 0xff;

	FUNC9(pdev, pmic);

	pmic->irq = FUNC8(pdev, 0);
	if (pmic->irq <= 0)
		return pmic->irq;

	ret = FUNC6(pmic);
	if (ret)
		return ret;

	switch (pmic->chip_id) {
	case MT6323_CHIP_ID:
		ret = FUNC4(&pdev->dev, -1, mt6323_devs,
					   FUNC0(mt6323_devs), NULL,
					   0, pmic->irq_domain);
		break;

	case MT6391_CHIP_ID:
	case MT6397_CHIP_ID:
		ret = FUNC4(&pdev->dev, -1, mt6397_devs,
					   FUNC0(mt6397_devs), NULL,
					   0, pmic->irq_domain);
		break;

	default:
		FUNC1(&pdev->dev, "unsupported chip: %d\n", pmic->chip_id);
		return -ENODEV;
	}

	if (ret) {
		FUNC5(pmic->irq_domain);
		FUNC1(&pdev->dev, "failed to add child devices: %d\n", ret);
	}

	return ret;
}