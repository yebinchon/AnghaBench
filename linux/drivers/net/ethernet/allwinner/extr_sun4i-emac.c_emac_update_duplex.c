
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct emac_board_info {scalar_t__ membase; scalar_t__ duplex; } ;


 unsigned int EMAC_MAC_CTL1_DUPLEX_EN ;
 scalar_t__ EMAC_MAC_CTL1_REG ;
 struct emac_board_info* netdev_priv (struct net_device*) ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void emac_update_duplex(struct net_device *dev)
{
 struct emac_board_info *db = netdev_priv(dev);
 unsigned int reg_val;


 reg_val = readl(db->membase + EMAC_MAC_CTL1_REG);
 reg_val &= ~EMAC_MAC_CTL1_DUPLEX_EN;
 if (db->duplex)
  reg_val |= EMAC_MAC_CTL1_DUPLEX_EN;
 writel(reg_val, db->membase + EMAC_MAC_CTL1_REG);
}
