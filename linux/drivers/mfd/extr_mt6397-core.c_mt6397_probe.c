
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mt6397_chip {unsigned int chip_id; scalar_t__ irq; int irq_domain; int regmap; TYPE_1__* dev; } ;
struct chip_data {unsigned int cid_shift; int cid_addr; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;



 int dev_err (TYPE_1__*,char*,int) ;
 int dev_get_regmap (int ,int *) ;
 struct mt6397_chip* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_mfd_add_devices (TYPE_1__*,int,int ,int ,int *,int ,int ) ;
 int irq_domain_remove (int ) ;
 int mt6323_devs ;
 int mt6397_devs ;
 int mt6397_irq_init (struct mt6397_chip*) ;
 struct chip_data* of_device_get_match_data (TYPE_1__*) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct mt6397_chip*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int mt6397_probe(struct platform_device *pdev)
{
 int ret;
 unsigned int id;
 struct mt6397_chip *pmic;
 const struct chip_data *pmic_core;

 pmic = devm_kzalloc(&pdev->dev, sizeof(*pmic), GFP_KERNEL);
 if (!pmic)
  return -ENOMEM;

 pmic->dev = &pdev->dev;





 pmic->regmap = dev_get_regmap(pdev->dev.parent, ((void*)0));
 if (!pmic->regmap)
  return -ENODEV;

 pmic_core = of_device_get_match_data(&pdev->dev);
 if (!pmic_core)
  return -ENODEV;

 ret = regmap_read(pmic->regmap, pmic_core->cid_addr, &id);
 if (ret) {
  dev_err(&pdev->dev, "Failed to read chip id: %d\n", ret);
  return ret;
 }

 pmic->chip_id = (id >> pmic_core->cid_shift) & 0xff;

 platform_set_drvdata(pdev, pmic);

 pmic->irq = platform_get_irq(pdev, 0);
 if (pmic->irq <= 0)
  return pmic->irq;

 ret = mt6397_irq_init(pmic);
 if (ret)
  return ret;

 switch (pmic->chip_id) {
 case 130:
  ret = devm_mfd_add_devices(&pdev->dev, -1, mt6323_devs,
        ARRAY_SIZE(mt6323_devs), ((void*)0),
        0, pmic->irq_domain);
  break;

 case 129:
 case 128:
  ret = devm_mfd_add_devices(&pdev->dev, -1, mt6397_devs,
        ARRAY_SIZE(mt6397_devs), ((void*)0),
        0, pmic->irq_domain);
  break;

 default:
  dev_err(&pdev->dev, "unsupported chip: %d\n", pmic->chip_id);
  return -ENODEV;
 }

 if (ret) {
  irq_domain_remove(pmic->irq_domain);
  dev_err(&pdev->dev, "failed to add child devices: %d\n", ret);
 }

 return ret;
}
