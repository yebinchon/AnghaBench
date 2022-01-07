
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;


 int dev_err (int *,char*,int ) ;
 int ov6650_reg_read (struct i2c_client*,int ,int *) ;
 int ov6650_reg_write (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int ov6650_reg_rmw(struct i2c_client *client, u8 reg, u8 set, u8 mask)
{
 u8 val;
 int ret;

 ret = ov6650_reg_read(client, reg, &val);
 if (ret) {
  dev_err(&client->dev,
   "[Read]-Modify-Write of register 0x%02x failed!\n",
   reg);
  return ret;
 }

 val &= ~mask;
 val |= set;

 ret = ov6650_reg_write(client, reg, val);
 if (ret)
  dev_err(&client->dev,
   "Read-Modify-[Write] of register 0x%02x failed!\n",
   reg);

 return ret;
}
