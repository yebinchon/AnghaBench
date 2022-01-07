
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8998_dev {int irq; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ device_may_wakeup (struct device*) ;
 struct max8998_dev* i2c_get_clientdata (struct i2c_client*) ;
 int irq_set_irq_wake (int ,int ) ;
 int max8998_irq_resume (struct max8998_dev*) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int max8998_resume(struct device *dev)
{
 struct i2c_client *i2c = to_i2c_client(dev);
 struct max8998_dev *max8998 = i2c_get_clientdata(i2c);

 if (device_may_wakeup(dev))
  irq_set_irq_wake(max8998->irq, 0);





 return max8998_irq_resume(i2c_get_clientdata(i2c));
}
