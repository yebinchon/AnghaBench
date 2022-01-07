
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int REG_SF_USR_EXPOSURE_CHG ;
 int REG_SF_USR_EXPOSURE_H ;
 int REG_SF_USR_EXPOSURE_L ;
 int s5k6aa_write (struct i2c_client*,int ,int) ;

__attribute__((used)) static int s5k6aa_set_user_exposure(struct i2c_client *client, int exposure)
{
 unsigned int time = exposure / 10;

 int ret = s5k6aa_write(client, REG_SF_USR_EXPOSURE_L, time & 0xffff);
 if (!ret)
  ret = s5k6aa_write(client, REG_SF_USR_EXPOSURE_H, time >> 16);
 if (ret)
  return ret;
 return s5k6aa_write(client, REG_SF_USR_EXPOSURE_CHG, 1);
}
