
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int COMB_BAND_FILTER ;
 int REG_COMA ;
 int REG_COMB ;
 int dev_dbg (int *,char*) ;
 int ov6650_reg_rmw (struct i2c_client*,int ,int ,int ) ;
 int ov6650_reg_write (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int ov6650_prog_dflt(struct i2c_client *client)
{
 int ret;

 dev_dbg(&client->dev, "initializing\n");

 ret = ov6650_reg_write(client, REG_COMA, 0);
 if (!ret)
  ret = ov6650_reg_rmw(client, REG_COMB, 0, COMB_BAND_FILTER);

 return ret;
}
