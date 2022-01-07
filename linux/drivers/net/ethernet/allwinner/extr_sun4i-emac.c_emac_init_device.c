
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct emac_board_info {int lock; scalar_t__ membase; } ;


 scalar_t__ EMAC_CTL_REG ;
 unsigned int EMAC_CTL_RESET ;
 unsigned int EMAC_CTL_RX_EN ;
 unsigned int EMAC_CTL_TX_EN ;
 scalar_t__ EMAC_INT_CTL_REG ;
 int emac_update_duplex (struct net_device*) ;
 int emac_update_speed (struct net_device*) ;
 struct emac_board_info* netdev_priv (struct net_device*) ;
 unsigned int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void emac_init_device(struct net_device *dev)
{
 struct emac_board_info *db = netdev_priv(dev);
 unsigned long flags;
 unsigned int reg_val;

 spin_lock_irqsave(&db->lock, flags);

 emac_update_speed(dev);
 emac_update_duplex(dev);


 reg_val = readl(db->membase + EMAC_CTL_REG);
 writel(reg_val | EMAC_CTL_RESET | EMAC_CTL_TX_EN | EMAC_CTL_RX_EN,
  db->membase + EMAC_CTL_REG);


 reg_val = readl(db->membase + EMAC_INT_CTL_REG);
 reg_val |= (0xf << 0) | (0x01 << 8);
 writel(reg_val, db->membase + EMAC_INT_CTL_REG);

 spin_unlock_irqrestore(&db->lock, flags);
}
