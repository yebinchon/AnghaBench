
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77693_dev {int irq; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ device_may_wakeup (struct device*) ;
 int disable_irq (int ) ;
 int enable_irq_wake (int ) ;
 struct max77693_dev* i2c_get_clientdata (struct i2c_client*) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int max77693_suspend(struct device *dev)
{
 struct i2c_client *i2c = to_i2c_client(dev);
 struct max77693_dev *max77693 = i2c_get_clientdata(i2c);

 if (device_may_wakeup(dev)) {
  enable_irq_wake(max77693->irq);
  disable_irq(max77693->irq);
 }

 return 0;
}
