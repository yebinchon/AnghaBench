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
struct intel_soc_pmic {scalar_t__ irq; int /*<<< orphan*/  irq_chip_data; int /*<<< orphan*/  regmap; struct device* dev; } ;
struct device {int dummy; } ;
struct i2c_client {scalar_t__ irq; struct device dev; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long long CHT_WC_HRV ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_SHARED ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLATFORM_DEVID_NONE ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 int /*<<< orphan*/  cht_wc_dev ; 
 int /*<<< orphan*/  cht_wc_regmap_cfg ; 
 int /*<<< orphan*/  cht_wc_regmap_irq_chip ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,...) ; 
 struct intel_soc_pmic* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,int /*<<< orphan*/ *,struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*,struct intel_soc_pmic*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct i2c_client *client)
{
	struct device *dev = &client->dev;
	struct intel_soc_pmic *pmic;
	acpi_status status;
	unsigned long long hrv;
	int ret;

	status = FUNC5(FUNC1(dev), "_HRV", NULL, &hrv);
	if (FUNC0(status)) {
		FUNC6(dev, "Failed to get PMIC hardware revision\n");
		return -ENODEV;
	}
	if (hrv != CHT_WC_HRV) {
		FUNC6(dev, "Invalid PMIC hardware revision: %llu\n", hrv);
		return -ENODEV;
	}
	if (client->irq < 0) {
		FUNC6(dev, "Invalid IRQ\n");
		return -EINVAL;
	}

	pmic = FUNC7(dev, sizeof(*pmic), GFP_KERNEL);
	if (!pmic)
		return -ENOMEM;

	pmic->irq = client->irq;
	pmic->dev = dev;
	FUNC11(client, pmic);

	pmic->regmap = FUNC10(dev, NULL, client, &cht_wc_regmap_cfg);
	if (FUNC3(pmic->regmap))
		return FUNC4(pmic->regmap);

	ret = FUNC9(dev, pmic->regmap, pmic->irq,
				       IRQF_ONESHOT | IRQF_SHARED, 0,
				       &cht_wc_regmap_irq_chip,
				       &pmic->irq_chip_data);
	if (ret)
		return ret;

	return FUNC8(dev, PLATFORM_DEVID_NONE,
				cht_wc_dev, FUNC2(cht_wc_dev), NULL, 0,
				FUNC12(pmic->irq_chip_data));
}