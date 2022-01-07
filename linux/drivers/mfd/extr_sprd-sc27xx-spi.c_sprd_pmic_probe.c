
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sprd_pmic_data {int num_irqs; scalar_t__ irq_base; } ;
struct TYPE_3__ {int num_regs; int num_irqs; int mask_invert; TYPE_2__* irqs; scalar_t__ ack_base; scalar_t__ mask_base; scalar_t__ status_base; int name; } ;
struct sprd_pmic {int irq_data; TYPE_1__ irq_chip; int irq; int regmap; TYPE_2__* irqs; int * dev; } ;
struct spi_device {int dev; int irq; } ;
struct regmap_irq {int dummy; } ;
struct TYPE_4__ {int reg_offset; int mask; } ;


 int ARRAY_SIZE (int ) ;
 int BIT (int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_NO_SUSPEND ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int PLATFORM_DEVID_AUTO ;
 int PTR_ERR (int ) ;
 scalar_t__ SPRD_PMIC_INT_EN ;
 scalar_t__ SPRD_PMIC_INT_MASK_STATUS ;
 int dev_err (int *,char*,...) ;
 int dev_name (int *) ;
 TYPE_2__* devm_kcalloc (int *,int,int,int ) ;
 struct sprd_pmic* devm_kzalloc (int *,int,int ) ;
 int devm_mfd_add_devices (int *,int ,int ,int ,int *,int ,int ) ;
 int devm_regmap_add_irq_chip (int *,int ,int ,int,int ,TYPE_1__*,int *) ;
 int devm_regmap_init (int *,int *,int *,int *) ;
 struct sprd_pmic_data* of_device_get_match_data (int *) ;
 int regmap_irq_get_domain (int ) ;
 int spi_set_drvdata (struct spi_device*,struct sprd_pmic*) ;
 int sprd_pmic_config ;
 int sprd_pmic_devs ;
 int sprd_pmic_regmap ;

__attribute__((used)) static int sprd_pmic_probe(struct spi_device *spi)
{
 struct sprd_pmic *ddata;
 const struct sprd_pmic_data *pdata;
 int ret, i;

 pdata = of_device_get_match_data(&spi->dev);
 if (!pdata) {
  dev_err(&spi->dev, "No matching driver data found\n");
  return -EINVAL;
 }

 ddata = devm_kzalloc(&spi->dev, sizeof(*ddata), GFP_KERNEL);
 if (!ddata)
  return -ENOMEM;

 ddata->regmap = devm_regmap_init(&spi->dev, &sprd_pmic_regmap,
      &spi->dev, &sprd_pmic_config);
 if (IS_ERR(ddata->regmap)) {
  ret = PTR_ERR(ddata->regmap);
  dev_err(&spi->dev, "Failed to allocate register map %d\n", ret);
  return ret;
 }

 spi_set_drvdata(spi, ddata);
 ddata->dev = &spi->dev;
 ddata->irq = spi->irq;

 ddata->irq_chip.name = dev_name(&spi->dev);
 ddata->irq_chip.status_base =
  pdata->irq_base + SPRD_PMIC_INT_MASK_STATUS;
 ddata->irq_chip.mask_base = pdata->irq_base + SPRD_PMIC_INT_EN;
 ddata->irq_chip.ack_base = 0;
 ddata->irq_chip.num_regs = 1;
 ddata->irq_chip.num_irqs = pdata->num_irqs;
 ddata->irq_chip.mask_invert = 1;

 ddata->irqs = devm_kcalloc(&spi->dev,
       pdata->num_irqs, sizeof(struct regmap_irq),
       GFP_KERNEL);
 if (!ddata->irqs)
  return -ENOMEM;

 ddata->irq_chip.irqs = ddata->irqs;
 for (i = 0; i < pdata->num_irqs; i++) {
  ddata->irqs[i].reg_offset = i / pdata->num_irqs;
  ddata->irqs[i].mask = BIT(i % pdata->num_irqs);
 }

 ret = devm_regmap_add_irq_chip(&spi->dev, ddata->regmap, ddata->irq,
           IRQF_ONESHOT | IRQF_NO_SUSPEND, 0,
           &ddata->irq_chip, &ddata->irq_data);
 if (ret) {
  dev_err(&spi->dev, "Failed to add PMIC irq chip %d\n", ret);
  return ret;
 }

 ret = devm_mfd_add_devices(&spi->dev, PLATFORM_DEVID_AUTO,
       sprd_pmic_devs, ARRAY_SIZE(sprd_pmic_devs),
       ((void*)0), 0,
       regmap_irq_get_domain(ddata->irq_data));
 if (ret) {
  dev_err(&spi->dev, "Failed to register device %d\n", ret);
  return ret;
 }

 return 0;
}
