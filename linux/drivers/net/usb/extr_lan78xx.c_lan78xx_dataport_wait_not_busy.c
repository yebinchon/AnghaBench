
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lan78xx_net {int net; } ;


 int DP_SEL ;
 int DP_SEL_DPRDY_ ;
 int EIO ;
 int lan78xx_read_reg (struct lan78xx_net*,int ,int*) ;
 int netdev_warn (int ,char*) ;
 scalar_t__ unlikely (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int lan78xx_dataport_wait_not_busy(struct lan78xx_net *dev)
{
 int i, ret;

 for (i = 0; i < 100; i++) {
  u32 dp_sel;

  ret = lan78xx_read_reg(dev, DP_SEL, &dp_sel);
  if (unlikely(ret < 0))
   return -EIO;

  if (dp_sel & DP_SEL_DPRDY_)
   return 0;

  usleep_range(40, 100);
 }

 netdev_warn(dev->net, "lan78xx_dataport_wait_not_busy timed out");

 return -EIO;
}
