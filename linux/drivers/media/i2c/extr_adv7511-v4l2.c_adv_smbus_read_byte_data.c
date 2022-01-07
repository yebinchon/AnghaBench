
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;
typedef int s32 ;


 int adv_smbus_read_byte_data_check (struct i2c_client*,int ,int) ;
 int v4l_err (struct i2c_client*,char*,...) ;

__attribute__((used)) static s32 adv_smbus_read_byte_data(struct i2c_client *client, u8 command)
{
 int i;
 for (i = 0; i < 3; i++) {
  int ret = adv_smbus_read_byte_data_check(client, command, 1);
  if (ret >= 0) {
   if (i)
    v4l_err(client, "read ok after %d retries\n", i);
   return ret;
  }
 }
 v4l_err(client, "read failed\n");
 return -1;
}
