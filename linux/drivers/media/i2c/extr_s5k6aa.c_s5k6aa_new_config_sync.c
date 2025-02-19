
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_client {int dummy; } ;


 int ETIMEDOUT ;
 int REG_G_ACTIVE_PREV_CFG ;
 int REG_G_NEW_CFG_SYNC ;
 int REG_G_PREV_CFG_CHG ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int s5k6aa_read (struct i2c_client*,int ,int*) ;
 int s5k6aa_write (struct i2c_client*,int ,int) ;
 scalar_t__ time_is_after_jiffies (unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int s5k6aa_new_config_sync(struct i2c_client *client, int timeout,
      int cid)
{
 unsigned long end = jiffies + msecs_to_jiffies(timeout);
 u16 reg = 1;
 int ret;

 ret = s5k6aa_write(client, REG_G_ACTIVE_PREV_CFG, cid);
 if (!ret)
  ret = s5k6aa_write(client, REG_G_PREV_CFG_CHG, 1);
 if (!ret)
  ret = s5k6aa_write(client, REG_G_NEW_CFG_SYNC, 1);
 if (timeout == 0)
  return ret;

 while (ret >= 0 && time_is_after_jiffies(end)) {
  ret = s5k6aa_read(client, REG_G_NEW_CFG_SYNC, &reg);
  if (!reg)
   return 0;
  usleep_range(1000, 5000);
 }
 return ret ? ret : -ETIMEDOUT;
}
