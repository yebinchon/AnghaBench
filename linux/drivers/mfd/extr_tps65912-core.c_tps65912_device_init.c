
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65912 {int irq_data; int irq; int dev; int regmap; } ;


 int ARRAY_SIZE (int ) ;
 int IRQF_ONESHOT ;
 int PLATFORM_DEVID_AUTO ;
 int mfd_add_devices (int ,int ,int ,int ,int *,int ,int ) ;
 int regmap_add_irq_chip (int ,int ,int ,int ,int *,int *) ;
 int regmap_del_irq_chip (int ,int ) ;
 int regmap_irq_get_domain (int ) ;
 int tps65912_cells ;
 int tps65912_irq_chip ;

int tps65912_device_init(struct tps65912 *tps)
{
 int ret;

 ret = regmap_add_irq_chip(tps->regmap, tps->irq, IRQF_ONESHOT, 0,
      &tps65912_irq_chip, &tps->irq_data);
 if (ret)
  return ret;

 ret = mfd_add_devices(tps->dev, PLATFORM_DEVID_AUTO, tps65912_cells,
         ARRAY_SIZE(tps65912_cells), ((void*)0), 0,
         regmap_irq_get_domain(tps->irq_data));
 if (ret) {
  regmap_del_irq_chip(tps->irq, tps->irq_data);
  return ret;
 }

 return 0;
}
