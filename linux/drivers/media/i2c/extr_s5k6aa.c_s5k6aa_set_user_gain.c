
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int REG_SF_USR_TOT_GAIN ;
 int REG_SF_USR_TOT_GAIN_CHG ;
 int s5k6aa_write (struct i2c_client*,int ,int) ;

__attribute__((used)) static int s5k6aa_set_user_gain(struct i2c_client *client, int gain)
{
 int ret = s5k6aa_write(client, REG_SF_USR_TOT_GAIN, gain);
 if (ret)
  return ret;
 return s5k6aa_write(client, REG_SF_USR_TOT_GAIN_CHG, 1);
}
