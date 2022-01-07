
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct cas {int mac_rx_cfg; int lock; scalar_t__ regs; int hw_running; } ;


 int MAC_RX_CFG_EN ;
 int MAC_RX_CFG_HASH_FILTER_EN ;
 int MAC_RX_CFG_PROMISC_EN ;
 scalar_t__ REG_MAC_RX_CFG ;
 int STOP_TRIES ;
 int cas_setup_multicast (struct cas*) ;
 struct cas* netdev_priv (struct net_device*) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void cas_set_multicast(struct net_device *dev)
{
 struct cas *cp = netdev_priv(dev);
 u32 rxcfg, rxcfg_new;
 unsigned long flags;
 int limit = STOP_TRIES;

 if (!cp->hw_running)
  return;

 spin_lock_irqsave(&cp->lock, flags);
 rxcfg = readl(cp->regs + REG_MAC_RX_CFG);


 writel(rxcfg & ~MAC_RX_CFG_EN, cp->regs + REG_MAC_RX_CFG);
 while (readl(cp->regs + REG_MAC_RX_CFG) & MAC_RX_CFG_EN) {
  if (!limit--)
   break;
  udelay(10);
 }


 limit = STOP_TRIES;
 rxcfg &= ~(MAC_RX_CFG_PROMISC_EN | MAC_RX_CFG_HASH_FILTER_EN);
 writel(rxcfg & ~MAC_RX_CFG_EN, cp->regs + REG_MAC_RX_CFG);
 while (readl(cp->regs + REG_MAC_RX_CFG) & MAC_RX_CFG_HASH_FILTER_EN) {
  if (!limit--)
   break;
  udelay(10);
 }


 cp->mac_rx_cfg = rxcfg_new = cas_setup_multicast(cp);
 rxcfg |= rxcfg_new;
 writel(rxcfg, cp->regs + REG_MAC_RX_CFG);
 spin_unlock_irqrestore(&cp->lock, flags);
}
