
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_soc_pmic_config {int irq_flags; int n_cell_devs; int cell_dev; int irq_chip; int regmap_config; } ;
struct intel_soc_pmic {int irq_chip_data; int irq; int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int irq; struct device dev; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE (struct device*) ;
 int ARRAY_SIZE (int ) ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int crc_pwm_lookup ;
 int dev_err (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct intel_soc_pmic*) ;
 int dev_warn (struct device*,char*,int) ;
 struct intel_soc_pmic* devm_kzalloc (struct device*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int ) ;
 int enable_irq_wake (int ) ;
 int gpiod_add_lookup_table (int *) ;
 struct intel_soc_pmic_config intel_soc_pmic_config_byt_crc ;
 struct intel_soc_pmic_config intel_soc_pmic_config_cht_crc ;
 int mfd_add_devices (struct device*,int,int ,int ,int *,int ,int ) ;
 int panel_gpio_table ;
 int pwm_add_table (int ,int ) ;
 int regmap_add_irq_chip (int ,int ,int,int ,int ,int *) ;
 int regmap_del_irq_chip (int ,int ) ;
 int regmap_irq_get_domain (int ) ;

__attribute__((used)) static int intel_soc_pmic_i2c_probe(struct i2c_client *i2c,
        const struct i2c_device_id *i2c_id)
{
 struct device *dev = &i2c->dev;
 struct intel_soc_pmic_config *config;
 struct intel_soc_pmic *pmic;
 unsigned long long hrv;
 acpi_status status;
 int ret;





 status = acpi_evaluate_integer(ACPI_HANDLE(dev), "_HRV", ((void*)0), &hrv);
 if (ACPI_FAILURE(status)) {
  dev_err(dev, "Failed to get PMIC hardware revision\n");
  return -ENODEV;
 }

 switch (hrv) {
 case 129:
  config = &intel_soc_pmic_config_byt_crc;
  break;
 case 128:
  config = &intel_soc_pmic_config_cht_crc;
  break;
 default:
  dev_warn(dev, "Unknown hardware rev %llu, assuming BYT\n", hrv);
  config = &intel_soc_pmic_config_byt_crc;
 }

 pmic = devm_kzalloc(dev, sizeof(*pmic), GFP_KERNEL);
 if (!pmic)
  return -ENOMEM;

 dev_set_drvdata(dev, pmic);

 pmic->regmap = devm_regmap_init_i2c(i2c, config->regmap_config);
 if (IS_ERR(pmic->regmap))
  return PTR_ERR(pmic->regmap);

 pmic->irq = i2c->irq;

 ret = regmap_add_irq_chip(pmic->regmap, pmic->irq,
      config->irq_flags | IRQF_ONESHOT,
      0, config->irq_chip,
      &pmic->irq_chip_data);
 if (ret)
  return ret;

 ret = enable_irq_wake(pmic->irq);
 if (ret)
  dev_warn(dev, "Can't enable IRQ as wake source: %d\n", ret);


 gpiod_add_lookup_table(&panel_gpio_table);


 pwm_add_table(crc_pwm_lookup, ARRAY_SIZE(crc_pwm_lookup));

 ret = mfd_add_devices(dev, -1, config->cell_dev,
         config->n_cell_devs, ((void*)0), 0,
         regmap_irq_get_domain(pmic->irq_chip_data));
 if (ret)
  goto err_del_irq_chip;

 return 0;

err_del_irq_chip:
 regmap_del_irq_chip(pmic->irq, pmic->irq_chip_data);
 return ret;
}
