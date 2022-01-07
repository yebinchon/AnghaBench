
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;


 int dev_err (int *,char*,int ) ;
 int ov9640_reg_read (struct i2c_client*,int ,int *) ;
 int ov9640_reg_write (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int ov9640_reg_rmw(struct i2c_client *client, u8 reg, u8 set, u8 unset)
{
 u8 val;
 int ret;

 ret = ov9640_reg_read(client, reg, &val);
 if (ret) {
  dev_err(&client->dev,
   "[Read]-Modify-Write of register %02x failed!\n", reg);
  return ret;
 }

 val |= set;
 val &= ~unset;

 ret = ov9640_reg_write(client, reg, val);
 if (ret)
  dev_err(&client->dev,
   "Read-Modify-[Write] of register %02x failed!\n", reg);

 return ret;
}
