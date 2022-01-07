
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6060_priv {int dummy; } ;


 int ETIMEDOUT ;
 int GLOBAL_ATU_CONTROL ;
 int GLOBAL_ATU_CONTROL_LEARNDIS ;
 int GLOBAL_ATU_CONTROL_SWRESET ;
 int GLOBAL_STATUS ;
 int GLOBAL_STATUS_INIT_READY ;
 int HZ ;
 int MV88E6060_PORTS ;
 int PORT_CONTROL ;
 int PORT_CONTROL_STATE_MASK ;
 int REG_GLOBAL ;
 int REG_PORT (int) ;
 int jiffies ;
 int reg_read (struct mv88e6060_priv*,int ,int ) ;
 int reg_write (struct mv88e6060_priv*,int ,int ,int) ;
 scalar_t__ time_after (int,unsigned long) ;
 scalar_t__ time_before (int,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int mv88e6060_switch_reset(struct mv88e6060_priv *priv)
{
 int i;
 int ret;
 unsigned long timeout;


 for (i = 0; i < MV88E6060_PORTS; i++) {
  ret = reg_read(priv, REG_PORT(i), PORT_CONTROL);
  if (ret < 0)
   return ret;
  ret = reg_write(priv, REG_PORT(i), PORT_CONTROL,
    ret & ~PORT_CONTROL_STATE_MASK);
  if (ret)
   return ret;
 }


 usleep_range(2000, 4000);


 ret = reg_write(priv, REG_GLOBAL, GLOBAL_ATU_CONTROL,
   GLOBAL_ATU_CONTROL_SWRESET |
   GLOBAL_ATU_CONTROL_LEARNDIS);
 if (ret)
  return ret;


 timeout = jiffies + 1 * HZ;
 while (time_before(jiffies, timeout)) {
  ret = reg_read(priv, REG_GLOBAL, GLOBAL_STATUS);
  if (ret < 0)
   return ret;

  if (ret & GLOBAL_STATUS_INIT_READY)
   break;

  usleep_range(1000, 2000);
 }
 if (time_after(jiffies, timeout))
  return -ETIMEDOUT;

 return 0;
}
