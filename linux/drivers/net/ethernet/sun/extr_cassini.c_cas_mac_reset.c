
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cas {scalar_t__ regs; int dev; } ;


 scalar_t__ REG_MAC_RX_RESET ;
 scalar_t__ REG_MAC_STATE_MACHINE ;
 scalar_t__ REG_MAC_TX_RESET ;
 int STOP_TRIES ;
 int netdev_err (int ,char*,int,int,int) ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void cas_mac_reset(struct cas *cp)
{
 int i;


 writel(0x1, cp->regs + REG_MAC_TX_RESET);
 writel(0x1, cp->regs + REG_MAC_RX_RESET);


 i = STOP_TRIES;
 while (i-- > 0) {
  if (readl(cp->regs + REG_MAC_TX_RESET) == 0)
   break;
  udelay(10);
 }


 i = STOP_TRIES;
 while (i-- > 0) {
  if (readl(cp->regs + REG_MAC_RX_RESET) == 0)
   break;
  udelay(10);
 }

 if (readl(cp->regs + REG_MAC_TX_RESET) |
     readl(cp->regs + REG_MAC_RX_RESET))
  netdev_err(cp->dev, "mac tx[%d]/rx[%d] reset failed [%08x]\n",
      readl(cp->regs + REG_MAC_TX_RESET),
      readl(cp->regs + REG_MAC_RX_RESET),
      readl(cp->regs + REG_MAC_STATE_MACHINE));
}
