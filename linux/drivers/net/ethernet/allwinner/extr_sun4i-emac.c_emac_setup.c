
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct emac_board_info {scalar_t__ membase; } ;


 int EMAC_MAC_CLRT_COLLISION_WINDOW ;
 scalar_t__ EMAC_MAC_CLRT_REG ;
 int EMAC_MAC_CLRT_RM ;
 scalar_t__ EMAC_MAC_CTL0_REG ;
 unsigned int EMAC_MAC_CTL0_RX_FLOW_CTL_EN ;
 unsigned int EMAC_MAC_CTL0_TX_FLOW_CTL_EN ;
 unsigned int EMAC_MAC_CTL1_CRC_EN ;
 unsigned int EMAC_MAC_CTL1_LEN_CHECK_EN ;
 unsigned int EMAC_MAC_CTL1_PAD_EN ;
 scalar_t__ EMAC_MAC_CTL1_REG ;
 int EMAC_MAC_IPGR_IPG1 ;
 int EMAC_MAC_IPGR_IPG2 ;
 scalar_t__ EMAC_MAC_IPGR_REG ;
 int EMAC_MAC_IPGT_FULL_DUPLEX ;
 scalar_t__ EMAC_MAC_IPGT_REG ;
 scalar_t__ EMAC_MAC_MAXF_REG ;
 int EMAC_MAX_FRAME_LEN ;
 unsigned int EMAC_TX_MODE_ABORTED_FRAME_EN ;
 scalar_t__ EMAC_TX_MODE_REG ;
 struct emac_board_info* netdev_priv (struct net_device*) ;
 unsigned int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static unsigned int emac_setup(struct net_device *ndev)
{
 struct emac_board_info *db = netdev_priv(ndev);
 unsigned int reg_val;


 reg_val = readl(db->membase + EMAC_TX_MODE_REG);

 writel(reg_val | EMAC_TX_MODE_ABORTED_FRAME_EN,
  db->membase + EMAC_TX_MODE_REG);



 reg_val = readl(db->membase + EMAC_MAC_CTL0_REG);
 writel(reg_val | EMAC_MAC_CTL0_RX_FLOW_CTL_EN |
  EMAC_MAC_CTL0_TX_FLOW_CTL_EN,
  db->membase + EMAC_MAC_CTL0_REG);


 reg_val = readl(db->membase + EMAC_MAC_CTL1_REG);
 reg_val |= EMAC_MAC_CTL1_LEN_CHECK_EN;
 reg_val |= EMAC_MAC_CTL1_CRC_EN;
 reg_val |= EMAC_MAC_CTL1_PAD_EN;
 writel(reg_val, db->membase + EMAC_MAC_CTL1_REG);


 writel(EMAC_MAC_IPGT_FULL_DUPLEX, db->membase + EMAC_MAC_IPGT_REG);


 writel((EMAC_MAC_IPGR_IPG1 << 8) | EMAC_MAC_IPGR_IPG2,
  db->membase + EMAC_MAC_IPGR_REG);


 writel((EMAC_MAC_CLRT_COLLISION_WINDOW << 8) | EMAC_MAC_CLRT_RM,
  db->membase + EMAC_MAC_CLRT_REG);


 writel(EMAC_MAX_FRAME_LEN,
  db->membase + EMAC_MAC_MAXF_REG);

 return 0;
}
