
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int COMA_RESET ;
 int REG_COMA ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int ov6650_reg_rmw (struct i2c_client*,int ,int ,int ) ;

__attribute__((used)) static int ov6650_reset(struct i2c_client *client)
{
 int ret;

 dev_dbg(&client->dev, "reset\n");

 ret = ov6650_reg_rmw(client, REG_COMA, COMA_RESET, 0);
 if (ret)
  dev_err(&client->dev,
   "An error occurred while entering soft reset!\n");

 return ret;
}
