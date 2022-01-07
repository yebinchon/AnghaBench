
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ksz_device {TYPE_1__* dev_ops; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int (* shutdown ) (struct ksz_device*) ;} ;


 struct ksz_device* i2c_get_clientdata (struct i2c_client*) ;
 int stub1 (struct ksz_device*) ;

__attribute__((used)) static void ksz9477_i2c_shutdown(struct i2c_client *i2c)
{
 struct ksz_device *dev = i2c_get_clientdata(i2c);

 if (dev && dev->dev_ops->shutdown)
  dev->dev_ops->shutdown(dev);
}
