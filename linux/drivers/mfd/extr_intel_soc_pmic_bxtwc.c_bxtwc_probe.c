
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int kobj; } ;
struct platform_device {TYPE_1__ dev; } ;
struct intel_soc_pmic {int irq; int regmap; int irq_chip_data_crit; int irq_chip_data; int irq_chip_data_chgr; int irq_chip_data_adc; int irq_chip_data_bcu; int irq_chip_data_tmu; int irq_chip_data_pwrbtn; TYPE_1__* dev; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE (TYPE_1__*) ;
 int ARRAY_SIZE (int ) ;
 unsigned long long BROXTON_PMIC_WC_HRV ;
 int BXTWC_ADC_LVL1_IRQ ;
 int BXTWC_BCU_LVL1_IRQ ;
 int BXTWC_CHGR_LVL1_IRQ ;
 int BXTWC_CRIT_LVL1_IRQ ;
 int BXTWC_MIRQLVL1 ;
 int BXTWC_MIRQLVL1_MCHGR ;
 int BXTWC_PWRBTN_LVL1_IRQ ;
 int BXTWC_TMU_LVL1_IRQ ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int ) ;
 int PLATFORM_DEVID_NONE ;
 int PTR_ERR (int ) ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int bxt_wc_dev ;
 int bxtwc_add_chained_irq_chip (struct intel_soc_pmic*,int ,int ,int,int *,int *) ;
 int bxtwc_group ;
 int bxtwc_regmap_config ;
 int bxtwc_regmap_irq_chip ;
 int bxtwc_regmap_irq_chip_adc ;
 int bxtwc_regmap_irq_chip_bcu ;
 int bxtwc_regmap_irq_chip_chgr ;
 int bxtwc_regmap_irq_chip_crit ;
 int bxtwc_regmap_irq_chip_pwrbtn ;
 int bxtwc_regmap_irq_chip_tmu ;
 int dev_err (TYPE_1__*,char*,...) ;
 int dev_set_drvdata (TYPE_1__*,struct intel_soc_pmic*) ;
 struct intel_soc_pmic* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_mfd_add_devices (TYPE_1__*,int ,int ,int ,int *,int ,int *) ;
 int devm_regmap_add_irq_chip (TYPE_1__*,int ,int,int,int ,int *,int *) ;
 int devm_regmap_init (TYPE_1__*,int *,struct intel_soc_pmic*,int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int bxtwc_probe(struct platform_device *pdev)
{
 int ret;
 acpi_handle handle;
 acpi_status status;
 unsigned long long hrv;
 struct intel_soc_pmic *pmic;

 handle = ACPI_HANDLE(&pdev->dev);
 status = acpi_evaluate_integer(handle, "_HRV", ((void*)0), &hrv);
 if (ACPI_FAILURE(status)) {
  dev_err(&pdev->dev, "Failed to get PMIC hardware revision\n");
  return -ENODEV;
 }
 if (hrv != BROXTON_PMIC_WC_HRV) {
  dev_err(&pdev->dev, "Invalid PMIC hardware revision: %llu\n",
   hrv);
  return -ENODEV;
 }

 pmic = devm_kzalloc(&pdev->dev, sizeof(*pmic), GFP_KERNEL);
 if (!pmic)
  return -ENOMEM;

 ret = platform_get_irq(pdev, 0);
 if (ret < 0)
  return ret;
 pmic->irq = ret;

 dev_set_drvdata(&pdev->dev, pmic);
 pmic->dev = &pdev->dev;

 pmic->regmap = devm_regmap_init(&pdev->dev, ((void*)0), pmic,
     &bxtwc_regmap_config);
 if (IS_ERR(pmic->regmap)) {
  ret = PTR_ERR(pmic->regmap);
  dev_err(&pdev->dev, "Failed to initialise regmap: %d\n", ret);
  return ret;
 }

 ret = devm_regmap_add_irq_chip(&pdev->dev, pmic->regmap, pmic->irq,
           IRQF_ONESHOT | IRQF_SHARED,
           0, &bxtwc_regmap_irq_chip,
           &pmic->irq_chip_data);
 if (ret) {
  dev_err(&pdev->dev, "Failed to add IRQ chip\n");
  return ret;
 }

 ret = bxtwc_add_chained_irq_chip(pmic, pmic->irq_chip_data,
      BXTWC_PWRBTN_LVL1_IRQ,
      IRQF_ONESHOT,
      &bxtwc_regmap_irq_chip_pwrbtn,
      &pmic->irq_chip_data_pwrbtn);
 if (ret) {
  dev_err(&pdev->dev, "Failed to add PWRBTN IRQ chip\n");
  return ret;
 }

 ret = bxtwc_add_chained_irq_chip(pmic, pmic->irq_chip_data,
      BXTWC_TMU_LVL1_IRQ,
      IRQF_ONESHOT,
      &bxtwc_regmap_irq_chip_tmu,
      &pmic->irq_chip_data_tmu);
 if (ret) {
  dev_err(&pdev->dev, "Failed to add TMU IRQ chip\n");
  return ret;
 }


 ret = bxtwc_add_chained_irq_chip(pmic, pmic->irq_chip_data,
      BXTWC_BCU_LVL1_IRQ,
      IRQF_ONESHOT,
      &bxtwc_regmap_irq_chip_bcu,
      &pmic->irq_chip_data_bcu);


 if (ret) {
  dev_err(&pdev->dev, "Failed to add BUC IRQ chip\n");
  return ret;
 }


 ret = bxtwc_add_chained_irq_chip(pmic, pmic->irq_chip_data,
      BXTWC_ADC_LVL1_IRQ,
      IRQF_ONESHOT,
      &bxtwc_regmap_irq_chip_adc,
      &pmic->irq_chip_data_adc);


 if (ret) {
  dev_err(&pdev->dev, "Failed to add ADC IRQ chip\n");
  return ret;
 }


 ret = bxtwc_add_chained_irq_chip(pmic, pmic->irq_chip_data,
      BXTWC_CHGR_LVL1_IRQ,
      IRQF_ONESHOT,
      &bxtwc_regmap_irq_chip_chgr,
      &pmic->irq_chip_data_chgr);


 if (ret) {
  dev_err(&pdev->dev, "Failed to add CHGR IRQ chip\n");
  return ret;
 }


 ret = bxtwc_add_chained_irq_chip(pmic, pmic->irq_chip_data,
      BXTWC_CRIT_LVL1_IRQ,
      IRQF_ONESHOT,
      &bxtwc_regmap_irq_chip_crit,
      &pmic->irq_chip_data_crit);


 if (ret) {
  dev_err(&pdev->dev, "Failed to add CRIT IRQ chip\n");
  return ret;
 }

 ret = devm_mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE, bxt_wc_dev,
       ARRAY_SIZE(bxt_wc_dev), ((void*)0), 0, ((void*)0));
 if (ret) {
  dev_err(&pdev->dev, "Failed to add devices\n");
  return ret;
 }

 ret = sysfs_create_group(&pdev->dev.kobj, &bxtwc_group);
 if (ret) {
  dev_err(&pdev->dev, "Failed to create sysfs group %d\n", ret);
  return ret;
 }
 regmap_update_bits(pmic->regmap, BXTWC_MIRQLVL1,
    BXTWC_MIRQLVL1_MCHGR, 0);

 return 0;
}
