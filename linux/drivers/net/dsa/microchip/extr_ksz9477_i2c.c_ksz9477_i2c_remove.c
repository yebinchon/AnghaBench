
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_device {int dummy; } ;
struct i2c_client {int dummy; } ;


 struct ksz_device* i2c_get_clientdata (struct i2c_client*) ;
 int ksz_switch_remove (struct ksz_device*) ;

__attribute__((used)) static int ksz9477_i2c_remove(struct i2c_client *i2c)
{
 struct ksz_device *dev = i2c_get_clientdata(i2c);

 ksz_switch_remove(dev);

 return 0;
}
