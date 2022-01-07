
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ base_addr; } ;


 scalar_t__ EL3_CMD ;
 scalar_t__ EL3_STATUS ;
 int inw (scalar_t__) ;
 int netdev_warn (struct net_device*,char*,int) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static void tc589_wait_for_completion(struct net_device *dev, int cmd)
{
 int i = 100;
 outw(cmd, dev->base_addr + EL3_CMD);
 while (--i > 0)
  if (!(inw(dev->base_addr + EL3_STATUS) & 0x1000))
   break;
 if (i == 0)
  netdev_warn(dev, "command 0x%04x did not complete!\n", cmd);
}
