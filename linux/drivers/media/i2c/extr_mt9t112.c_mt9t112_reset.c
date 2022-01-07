
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int mt9t112_reg_mask_set (int,struct i2c_client const*,int,int,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int mt9t112_reset(const struct i2c_client *client)
{
 int ret;

 mt9t112_reg_mask_set(ret, client, 0x001a, 0x0001, 0x0001);
 usleep_range(1000, 5000);
 mt9t112_reg_mask_set(ret, client, 0x001a, 0x0001, 0x0000);

 return ret;
}
