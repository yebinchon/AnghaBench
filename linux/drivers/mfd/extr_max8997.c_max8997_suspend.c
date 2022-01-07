
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8997_dev {int irq; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ device_may_wakeup (struct device*) ;
 int disable_irq (int ) ;
 struct max8997_dev* i2c_get_clientdata (struct i2c_client*) ;
 int irq_set_irq_wake (int ,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int max8997_suspend(struct device *dev)
{
 struct i2c_client *i2c = to_i2c_client(dev);
 struct max8997_dev *max8997 = i2c_get_clientdata(i2c);

 disable_irq(max8997->irq);
 if (device_may_wakeup(dev))
  irq_set_irq_wake(max8997->irq, 1);
 return 0;
}
