
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct cas {int pause_last_time_recvd; int pause_entered; int dev; scalar_t__ regs; } ;


 int KERN_DEBUG ;
 int MAC_CTRL_PAUSE_RECEIVED ;
 int MAC_CTRL_PAUSE_STATE ;
 scalar_t__ REG_MAC_CTRL_STATUS ;
 int intr ;
 int netif_printk (struct cas*,int ,int ,int ,char*,int) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int cas_mac_interrupt(struct net_device *dev, struct cas *cp,
        u32 status)
{
 u32 stat = readl(cp->regs + REG_MAC_CTRL_STATUS);

 if (!stat)
  return 0;

 netif_printk(cp, intr, KERN_DEBUG, cp->dev,
       "mac interrupt, stat: 0x%x\n", stat);





 if (stat & MAC_CTRL_PAUSE_STATE)
  cp->pause_entered++;

 if (stat & MAC_CTRL_PAUSE_RECEIVED)
  cp->pause_last_time_recvd = (stat >> 16);

 return 0;
}
