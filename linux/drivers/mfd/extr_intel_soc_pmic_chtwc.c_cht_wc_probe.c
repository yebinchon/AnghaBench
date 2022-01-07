
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_soc_pmic {scalar_t__ irq; int irq_chip_data; int regmap; struct device* dev; } ;
struct device {int dummy; } ;
struct i2c_client {scalar_t__ irq; struct device dev; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE (struct device*) ;
 int ARRAY_SIZE (int ) ;
 unsigned long long CHT_WC_HRV ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int ) ;
 int PLATFORM_DEVID_NONE ;
 int PTR_ERR (int ) ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int cht_wc_dev ;
 int cht_wc_regmap_cfg ;
 int cht_wc_regmap_irq_chip ;
 int dev_err (struct device*,char*,...) ;
 struct intel_soc_pmic* devm_kzalloc (struct device*,int,int ) ;
 int devm_mfd_add_devices (struct device*,int ,int ,int ,int *,int ,int ) ;
 int devm_regmap_add_irq_chip (struct device*,int ,scalar_t__,int,int ,int *,int *) ;
 int devm_regmap_init (struct device*,int *,struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct intel_soc_pmic*) ;
 int regmap_irq_get_domain (int ) ;

__attribute__((used)) static int cht_wc_probe(struct i2c_client *client)
{
 struct device *dev = &client->dev;
 struct intel_soc_pmic *pmic;
 acpi_status status;
 unsigned long long hrv;
 int ret;

 status = acpi_evaluate_integer(ACPI_HANDLE(dev), "_HRV", ((void*)0), &hrv);
 if (ACPI_FAILURE(status)) {
  dev_err(dev, "Failed to get PMIC hardware revision\n");
  return -ENODEV;
 }
 if (hrv != CHT_WC_HRV) {
  dev_err(dev, "Invalid PMIC hardware revision: %llu\n", hrv);
  return -ENODEV;
 }
 if (client->irq < 0) {
  dev_err(dev, "Invalid IRQ\n");
  return -EINVAL;
 }

 pmic = devm_kzalloc(dev, sizeof(*pmic), GFP_KERNEL);
 if (!pmic)
  return -ENOMEM;

 pmic->irq = client->irq;
 pmic->dev = dev;
 i2c_set_clientdata(client, pmic);

 pmic->regmap = devm_regmap_init(dev, ((void*)0), client, &cht_wc_regmap_cfg);
 if (IS_ERR(pmic->regmap))
  return PTR_ERR(pmic->regmap);

 ret = devm_regmap_add_irq_chip(dev, pmic->regmap, pmic->irq,
           IRQF_ONESHOT | IRQF_SHARED, 0,
           &cht_wc_regmap_irq_chip,
           &pmic->irq_chip_data);
 if (ret)
  return ret;

 return devm_mfd_add_devices(dev, PLATFORM_DEVID_NONE,
    cht_wc_dev, ARRAY_SIZE(cht_wc_dev), ((void*)0), 0,
    regmap_irq_get_domain(pmic->irq_chip_data));
}
