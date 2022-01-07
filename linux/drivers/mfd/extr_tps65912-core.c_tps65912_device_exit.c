
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65912 {int irq_data; int irq; } ;


 int regmap_del_irq_chip (int ,int ) ;

int tps65912_device_exit(struct tps65912 *tps)
{
 regmap_del_irq_chip(tps->irq, tps->irq_data);

 return 0;
}
