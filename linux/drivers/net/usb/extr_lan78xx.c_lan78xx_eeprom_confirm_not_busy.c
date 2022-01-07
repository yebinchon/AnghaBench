
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lan78xx_net {int net; } ;


 int E2P_CMD ;
 int E2P_CMD_EPC_BUSY_ ;
 int EIO ;
 scalar_t__ HZ ;
 unsigned long jiffies ;
 int lan78xx_read_reg (struct lan78xx_net*,int ,int*) ;
 int netdev_warn (int ,char*) ;
 int time_after (unsigned long,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int lan78xx_eeprom_confirm_not_busy(struct lan78xx_net *dev)
{
 unsigned long start_time = jiffies;
 u32 val;
 int ret;

 do {
  ret = lan78xx_read_reg(dev, E2P_CMD, &val);
  if (unlikely(ret < 0))
   return -EIO;

  if (!(val & E2P_CMD_EPC_BUSY_))
   return 0;

  usleep_range(40, 100);
 } while (!time_after(jiffies, start_time + HZ));

 netdev_warn(dev->net, "EEPROM is busy");
 return -EIO;
}
