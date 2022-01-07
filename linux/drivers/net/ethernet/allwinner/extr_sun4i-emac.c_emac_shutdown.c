
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct emac_board_info {scalar_t__ membase; } ;


 scalar_t__ EMAC_CTL_REG ;
 unsigned int EMAC_CTL_RESET ;
 unsigned int EMAC_CTL_RX_EN ;
 unsigned int EMAC_CTL_TX_EN ;
 scalar_t__ EMAC_INT_CTL_REG ;
 scalar_t__ EMAC_INT_STA_REG ;
 struct emac_board_info* netdev_priv (struct net_device*) ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void emac_shutdown(struct net_device *dev)
{
 unsigned int reg_val;
 struct emac_board_info *db = netdev_priv(dev);


 writel(0, db->membase + EMAC_INT_CTL_REG);


 reg_val = readl(db->membase + EMAC_INT_STA_REG);
 writel(reg_val, db->membase + EMAC_INT_STA_REG);


 reg_val = readl(db->membase + EMAC_CTL_REG);
 reg_val &= ~(EMAC_CTL_TX_EN | EMAC_CTL_RX_EN | EMAC_CTL_RESET);
 writel(reg_val, db->membase + EMAC_CTL_REG);
}
