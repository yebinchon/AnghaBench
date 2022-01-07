
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max8907 {int i2c_rtc; int irqc_chg; TYPE_1__* i2c_gen; int irqc_on_off; int irqc_rtc; int dev; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int irq; } ;


 struct max8907* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_unregister_device (int ) ;
 int mfd_remove_devices (int ) ;
 int regmap_del_irq_chip (int ,int ) ;

__attribute__((used)) static int max8907_i2c_remove(struct i2c_client *i2c)
{
 struct max8907 *max8907 = i2c_get_clientdata(i2c);

 mfd_remove_devices(max8907->dev);

 regmap_del_irq_chip(max8907->i2c_gen->irq, max8907->irqc_rtc);
 regmap_del_irq_chip(max8907->i2c_gen->irq, max8907->irqc_on_off);
 regmap_del_irq_chip(max8907->i2c_gen->irq, max8907->irqc_chg);

 i2c_unregister_device(max8907->i2c_rtc);

 return 0;
}
