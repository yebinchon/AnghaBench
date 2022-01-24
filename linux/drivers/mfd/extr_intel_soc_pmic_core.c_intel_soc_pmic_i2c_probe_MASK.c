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
struct intel_soc_pmic_config {int irq_flags; int /*<<< orphan*/  n_cell_devs; int /*<<< orphan*/  cell_dev; int /*<<< orphan*/  irq_chip; int /*<<< orphan*/  regmap_config; } ;
struct intel_soc_pmic {int /*<<< orphan*/  irq_chip_data; int /*<<< orphan*/  irq; int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  irq; struct device dev; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  BYT_CRC_HRV 129 
#define  CHT_CRC_HRV 128 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 int /*<<< orphan*/  crc_pwm_lookup ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct intel_soc_pmic*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,int) ; 
 struct intel_soc_pmic* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct intel_soc_pmic_config intel_soc_pmic_config_byt_crc ; 
 struct intel_soc_pmic_config intel_soc_pmic_config_cht_crc ; 
 int FUNC13 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  panel_gpio_table ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct i2c_client *i2c,
				    const struct i2c_device_id *i2c_id)
{
	struct device *dev = &i2c->dev;
	struct intel_soc_pmic_config *config;
	struct intel_soc_pmic *pmic;
	unsigned long long hrv;
	acpi_status status;
	int ret;

	/*
	 * There are 2 different Crystal Cove PMICs a Bay Trail and Cherry
	 * Trail version, use _HRV to differentiate between the 2.
	 */
	status = FUNC5(FUNC1(dev), "_HRV", NULL, &hrv);
	if (FUNC0(status)) {
		FUNC6(dev, "Failed to get PMIC hardware revision\n");
		return -ENODEV;
	}

	switch (hrv) {
	case BYT_CRC_HRV:
		config = &intel_soc_pmic_config_byt_crc;
		break;
	case CHT_CRC_HRV:
		config = &intel_soc_pmic_config_cht_crc;
		break;
	default:
		FUNC8(dev, "Unknown hardware rev %llu, assuming BYT\n", hrv);
		config = &intel_soc_pmic_config_byt_crc;
	}

	pmic = FUNC9(dev, sizeof(*pmic), GFP_KERNEL);
	if (!pmic)
		return -ENOMEM;

	FUNC7(dev, pmic);

	pmic->regmap = FUNC10(i2c, config->regmap_config);
	if (FUNC3(pmic->regmap))
		return FUNC4(pmic->regmap);

	pmic->irq = i2c->irq;

	ret = FUNC15(pmic->regmap, pmic->irq,
				  config->irq_flags | IRQF_ONESHOT,
				  0, config->irq_chip,
				  &pmic->irq_chip_data);
	if (ret)
		return ret;

	ret = FUNC11(pmic->irq);
	if (ret)
		FUNC8(dev, "Can't enable IRQ as wake source: %d\n", ret);

	/* Add lookup table binding for Panel Control to the GPIO Chip */
	FUNC12(&panel_gpio_table);

	/* Add lookup table for crc-pwm */
	FUNC14(crc_pwm_lookup, FUNC2(crc_pwm_lookup));

	ret = FUNC13(dev, -1, config->cell_dev,
			      config->n_cell_devs, NULL, 0,
			      FUNC17(pmic->irq_chip_data));
	if (ret)
		goto err_del_irq_chip;

	return 0;

err_del_irq_chip:
	FUNC16(pmic->irq, pmic->irq_chip_data);
	return ret;
}