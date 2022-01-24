#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u32 ;
struct regmap {int dummy; } ;
struct pm_irq_data {int /*<<< orphan*/ * irq_handler; void* num_irqs; } ;
struct pm_irq_chip {int /*<<< orphan*/  irqdomain; int /*<<< orphan*/  pm_irq_lock; struct pm_irq_data const* pm_irq_data; void* num_blocks; void* num_masters; struct regmap* regmap; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 unsigned int BITS_PER_BYTE ; 
 void* FUNC0 (void*,int) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 int FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  REG_HWREV ; 
 int /*<<< orphan*/  REG_HWREV_2 ; 
 int /*<<< orphan*/  config ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 struct pm_irq_chip* FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,struct pm_irq_chip*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *,struct pm_irq_chip*) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 struct pm_irq_data* FUNC10 (TYPE_1__*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct pm_irq_chip*) ; 
 int /*<<< orphan*/  pm8xxx_irq_domain_ops ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,unsigned int) ; 
 int FUNC16 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ssbi_regmap_config ; 
 int /*<<< orphan*/  FUNC18 (struct pm_irq_chip*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	const struct pm_irq_data *data;
	struct regmap *regmap;
	int irq, rc;
	unsigned int val;
	u32 rev;
	struct pm_irq_chip *chip;

	data = FUNC10(&pdev->dev);
	if (!data) {
		FUNC3(&pdev->dev, "No matching driver data found\n");
		return -EINVAL;
	}

	irq = FUNC12(pdev, 0);
	if (irq < 0)
		return irq;

	regmap = FUNC5(&pdev->dev, NULL, pdev->dev.parent,
				  &ssbi_regmap_config);
	if (FUNC1(regmap))
		return FUNC2(regmap);

	/* Read PMIC chip revision */
	rc = FUNC16(regmap, REG_HWREV, &val);
	if (rc) {
		FUNC14("Failed to read hw rev reg %d:rc=%d\n", REG_HWREV, rc);
		return rc;
	}
	FUNC15("PMIC revision 1: %02X\n", val);
	rev = val;

	/* Read PMIC chip revision 2 */
	rc = FUNC16(regmap, REG_HWREV_2, &val);
	if (rc) {
		FUNC14("Failed to read hw rev 2 reg %d:rc=%d\n",
			REG_HWREV_2, rc);
		return rc;
	}
	FUNC15("PMIC revision 2: %02X\n", val);
	rev |= val << BITS_PER_BYTE;

	chip = FUNC4(&pdev->dev,
			    FUNC18(chip, config, data->num_irqs),
			    GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	FUNC13(pdev, chip);
	chip->regmap = regmap;
	chip->num_blocks = FUNC0(data->num_irqs, 8);
	chip->num_masters = FUNC0(chip->num_blocks, 8);
	chip->pm_irq_data = data;
	FUNC17(&chip->pm_irq_lock);

	chip->irqdomain = FUNC6(pdev->dev.of_node,
						data->num_irqs,
						&pm8xxx_irq_domain_ops,
						chip);
	if (!chip->irqdomain)
		return -ENODEV;

	FUNC8(irq, data->irq_handler, chip);
	FUNC9(irq, 1);

	rc = FUNC11(pdev->dev.of_node, NULL, NULL, &pdev->dev);
	if (rc) {
		FUNC8(irq, NULL, NULL);
		FUNC7(chip->irqdomain);
	}

	return rc;
}