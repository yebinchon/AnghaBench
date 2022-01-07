
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; } ;
struct emac_board_info {scalar_t__ membase; } ;


 unsigned int EMAC_RX_CTL_ACCEPT_BROADCAST_EN ;
 unsigned int EMAC_RX_CTL_ACCEPT_MULTICAST_EN ;
 unsigned int EMAC_RX_CTL_ACCEPT_UNICAST_EN ;
 unsigned int EMAC_RX_CTL_DA_FILTER_EN ;
 unsigned int EMAC_RX_CTL_PASS_ALL_EN ;
 unsigned int EMAC_RX_CTL_PASS_LEN_OOR_EN ;
 scalar_t__ EMAC_RX_CTL_REG ;
 int IFF_PROMISC ;
 struct emac_board_info* netdev_priv (struct net_device*) ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void emac_set_rx_mode(struct net_device *ndev)
{
 struct emac_board_info *db = netdev_priv(ndev);
 unsigned int reg_val;


 reg_val = readl(db->membase + EMAC_RX_CTL_REG);

 if (ndev->flags & IFF_PROMISC)
  reg_val |= EMAC_RX_CTL_PASS_ALL_EN;
 else
  reg_val &= ~EMAC_RX_CTL_PASS_ALL_EN;

 writel(reg_val | EMAC_RX_CTL_PASS_LEN_OOR_EN |
  EMAC_RX_CTL_ACCEPT_UNICAST_EN | EMAC_RX_CTL_DA_FILTER_EN |
  EMAC_RX_CTL_ACCEPT_MULTICAST_EN |
  EMAC_RX_CTL_ACCEPT_BROADCAST_EN,
  db->membase + EMAC_RX_CTL_REG);
}
