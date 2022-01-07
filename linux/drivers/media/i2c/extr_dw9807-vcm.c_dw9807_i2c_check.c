
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
typedef int status_result ;
typedef int status_addr ;


 char DW9807_STATUS_ADDR ;
 int dev_err (int *,char*,int) ;
 int i2c_master_recv (struct i2c_client*,char*,int) ;
 int i2c_master_send (struct i2c_client*,char const*,int) ;

__attribute__((used)) static int dw9807_i2c_check(struct i2c_client *client)
{
 const char status_addr = DW9807_STATUS_ADDR;
 char status_result;
 int ret;

 ret = i2c_master_send(client, &status_addr, sizeof(status_addr));
 if (ret < 0) {
  dev_err(&client->dev, "I2C write STATUS address fail ret = %d\n",
   ret);
  return ret;
 }

 ret = i2c_master_recv(client, &status_result, sizeof(status_result));
 if (ret < 0) {
  dev_err(&client->dev, "I2C read STATUS value fail ret = %d\n",
   ret);
  return ret;
 }

 return status_result;
}
