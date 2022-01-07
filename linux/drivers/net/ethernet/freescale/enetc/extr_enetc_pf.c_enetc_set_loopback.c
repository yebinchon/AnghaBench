
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct enetc_ndev_priv {TYPE_1__* si; } ;
struct enetc_hw {int dummy; } ;
struct TYPE_2__ {struct enetc_hw hw; } ;


 int ENETC_PM0_CMD_CFG ;
 int ENETC_PM0_CMD_PHY_TX_EN ;
 int ENETC_PM0_CMD_XGLP ;
 int ENETC_PM0_IFM_RLP ;
 int ENETC_PM0_IF_MODE ;
 int ENETC_PM1_CMD_CFG ;
 int ENETC_PMO_IFM_RG ;
 int enetc_port_rd (struct enetc_hw*,int ) ;
 int enetc_port_wr (struct enetc_hw*,int ,int) ;
 struct enetc_ndev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void enetc_set_loopback(struct net_device *ndev, bool en)
{
 struct enetc_ndev_priv *priv = netdev_priv(ndev);
 struct enetc_hw *hw = &priv->si->hw;
 u32 reg;

 reg = enetc_port_rd(hw, ENETC_PM0_IF_MODE);
 if (reg & ENETC_PMO_IFM_RG) {

  reg = (reg & ~ENETC_PM0_IFM_RLP) |
        (en ? ENETC_PM0_IFM_RLP : 0);
  enetc_port_wr(hw, ENETC_PM0_IF_MODE, reg);
 } else {

  reg = enetc_port_rd(hw, ENETC_PM0_CMD_CFG);
  reg = (reg & ~ENETC_PM0_CMD_XGLP) |
        (en ? ENETC_PM0_CMD_XGLP : 0);
  reg = (reg & ~ENETC_PM0_CMD_PHY_TX_EN) |
        (en ? ENETC_PM0_CMD_PHY_TX_EN : 0);
  enetc_port_wr(hw, ENETC_PM0_CMD_CFG, reg);
  enetc_port_wr(hw, ENETC_PM1_CMD_CFG, reg);
 }
}
