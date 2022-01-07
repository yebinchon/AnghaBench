
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int OV9640_COM7 ;
 int OV9640_COM7_SCCB_RESET ;
 int dev_err (int *,char*) ;
 int ov9640_reg_write (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int ov9640_reset(struct i2c_client *client)
{
 int ret;

 ret = ov9640_reg_write(client, OV9640_COM7, OV9640_COM7_SCCB_RESET);
 if (ret)
  dev_err(&client->dev,
   "An error occurred while entering soft reset!\n");

 return ret;
}
