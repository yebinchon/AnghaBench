#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  kobj; } ;
struct platform_device {TYPE_1__ dev; } ;
struct intel_soc_pmic {int irq; int /*<<< orphan*/  regmap; int /*<<< orphan*/  irq_chip_data_crit; int /*<<< orphan*/  irq_chip_data; int /*<<< orphan*/  irq_chip_data_chgr; int /*<<< orphan*/  irq_chip_data_adc; int /*<<< orphan*/  irq_chip_data_bcu; int /*<<< orphan*/  irq_chip_data_tmu; int /*<<< orphan*/  irq_chip_data_pwrbtn; TYPE_1__* dev; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long long BROXTON_PMIC_WC_HRV ; 
 int /*<<< orphan*/  BXTWC_ADC_LVL1_IRQ ; 
 int /*<<< orphan*/  BXTWC_BCU_LVL1_IRQ ; 
 int /*<<< orphan*/  BXTWC_CHGR_LVL1_IRQ ; 
 int /*<<< orphan*/  BXTWC_CRIT_LVL1_IRQ ; 
 int /*<<< orphan*/  BXTWC_MIRQLVL1 ; 
 int /*<<< orphan*/  BXTWC_MIRQLVL1_MCHGR ; 
 int /*<<< orphan*/  BXTWC_PWRBTN_LVL1_IRQ ; 
 int /*<<< orphan*/  BXTWC_TMU_LVL1_IRQ ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_SHARED ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLATFORM_DEVID_NONE ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 int /*<<< orphan*/  bxt_wc_dev ; 
 int FUNC6 (struct intel_soc_pmic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bxtwc_group ; 
 int /*<<< orphan*/  bxtwc_regmap_config ; 
 int /*<<< orphan*/  bxtwc_regmap_irq_chip ; 
 int /*<<< orphan*/  bxtwc_regmap_irq_chip_adc ; 
 int /*<<< orphan*/  bxtwc_regmap_irq_chip_bcu ; 
 int /*<<< orphan*/  bxtwc_regmap_irq_chip_chgr ; 
 int /*<<< orphan*/  bxtwc_regmap_irq_chip_crit ; 
 int /*<<< orphan*/  bxtwc_regmap_irq_chip_pwrbtn ; 
 int /*<<< orphan*/  bxtwc_regmap_irq_chip_tmu ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct intel_soc_pmic*) ; 
 struct intel_soc_pmic* FUNC9 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ *,struct intel_soc_pmic*,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	int ret;
	acpi_handle handle;
	acpi_status status;
	unsigned long long hrv;
	struct intel_soc_pmic *pmic;

	handle = FUNC1(&pdev->dev);
	status = FUNC5(handle, "_HRV", NULL, &hrv);
	if (FUNC0(status)) {
		FUNC7(&pdev->dev, "Failed to get PMIC hardware revision\n");
		return -ENODEV;
	}
	if (hrv != BROXTON_PMIC_WC_HRV) {
		FUNC7(&pdev->dev, "Invalid PMIC hardware revision: %llu\n",
			hrv);
		return -ENODEV;
	}

	pmic = FUNC9(&pdev->dev, sizeof(*pmic), GFP_KERNEL);
	if (!pmic)
		return -ENOMEM;

	ret = FUNC13(pdev, 0);
	if (ret < 0)
		return ret;
	pmic->irq = ret;

	FUNC8(&pdev->dev, pmic);
	pmic->dev = &pdev->dev;

	pmic->regmap = FUNC12(&pdev->dev, NULL, pmic,
					&bxtwc_regmap_config);
	if (FUNC3(pmic->regmap)) {
		ret = FUNC4(pmic->regmap);
		FUNC7(&pdev->dev, "Failed to initialise regmap: %d\n", ret);
		return ret;
	}

	ret = FUNC11(&pdev->dev, pmic->regmap, pmic->irq,
				       IRQF_ONESHOT | IRQF_SHARED,
				       0, &bxtwc_regmap_irq_chip,
				       &pmic->irq_chip_data);
	if (ret) {
		FUNC7(&pdev->dev, "Failed to add IRQ chip\n");
		return ret;
	}

	ret = FUNC6(pmic, pmic->irq_chip_data,
					 BXTWC_PWRBTN_LVL1_IRQ,
					 IRQF_ONESHOT,
					 &bxtwc_regmap_irq_chip_pwrbtn,
					 &pmic->irq_chip_data_pwrbtn);
	if (ret) {
		FUNC7(&pdev->dev, "Failed to add PWRBTN IRQ chip\n");
		return ret;
	}

	ret = FUNC6(pmic, pmic->irq_chip_data,
					 BXTWC_TMU_LVL1_IRQ,
					 IRQF_ONESHOT,
					 &bxtwc_regmap_irq_chip_tmu,
					 &pmic->irq_chip_data_tmu);
	if (ret) {
		FUNC7(&pdev->dev, "Failed to add TMU IRQ chip\n");
		return ret;
	}

	/* Add chained IRQ handler for BCU IRQs */
	ret = FUNC6(pmic, pmic->irq_chip_data,
					 BXTWC_BCU_LVL1_IRQ,
					 IRQF_ONESHOT,
					 &bxtwc_regmap_irq_chip_bcu,
					 &pmic->irq_chip_data_bcu);


	if (ret) {
		FUNC7(&pdev->dev, "Failed to add BUC IRQ chip\n");
		return ret;
	}

	/* Add chained IRQ handler for ADC IRQs */
	ret = FUNC6(pmic, pmic->irq_chip_data,
					 BXTWC_ADC_LVL1_IRQ,
					 IRQF_ONESHOT,
					 &bxtwc_regmap_irq_chip_adc,
					 &pmic->irq_chip_data_adc);


	if (ret) {
		FUNC7(&pdev->dev, "Failed to add ADC IRQ chip\n");
		return ret;
	}

	/* Add chained IRQ handler for CHGR IRQs */
	ret = FUNC6(pmic, pmic->irq_chip_data,
					 BXTWC_CHGR_LVL1_IRQ,
					 IRQF_ONESHOT,
					 &bxtwc_regmap_irq_chip_chgr,
					 &pmic->irq_chip_data_chgr);


	if (ret) {
		FUNC7(&pdev->dev, "Failed to add CHGR IRQ chip\n");
		return ret;
	}

	/* Add chained IRQ handler for CRIT IRQs */
	ret = FUNC6(pmic, pmic->irq_chip_data,
					 BXTWC_CRIT_LVL1_IRQ,
					 IRQF_ONESHOT,
					 &bxtwc_regmap_irq_chip_crit,
					 &pmic->irq_chip_data_crit);


	if (ret) {
		FUNC7(&pdev->dev, "Failed to add CRIT IRQ chip\n");
		return ret;
	}

	ret = FUNC10(&pdev->dev, PLATFORM_DEVID_NONE, bxt_wc_dev,
				   FUNC2(bxt_wc_dev), NULL, 0, NULL);
	if (ret) {
		FUNC7(&pdev->dev, "Failed to add devices\n");
		return ret;
	}

	ret = FUNC15(&pdev->dev.kobj, &bxtwc_group);
	if (ret) {
		FUNC7(&pdev->dev, "Failed to create sysfs group %d\n", ret);
		return ret;
	}

	/*
	 * There is known hw bug. Upon reset BIT 5 of register
	 * BXTWC_CHGR_LVL1_IRQ is 0 which is the expected value. However,
	 * later it's set to 1(masked) automatically by hardware. So we
	 * have the software workaround here to unmaksed it in order to let
	 * charger interrutp work.
	 */
	FUNC14(pmic->regmap, BXTWC_MIRQLVL1,
				BXTWC_MIRQLVL1_MCHGR, 0);

	return 0;
}