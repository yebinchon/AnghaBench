
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enetc_hw {int dummy; } ;


 int ENETC_G_EPFBLPR (int) ;
 scalar_t__ ENETC_G_EPFBLPR1_XGMII ;
 int ENETC_MAC_MAXFRM_SIZE ;
 int ENETC_PM0_CMD_CFG ;
 int ENETC_PM0_CMD_PHY_TX_EN ;
 int ENETC_PM0_CMD_TXP ;
 int ENETC_PM0_IFM_RGAUTO ;
 int ENETC_PM0_IFM_XGMII ;
 int ENETC_PM0_IF_MODE ;
 int ENETC_PM0_MAXFRM ;
 int ENETC_PM0_PROMISC ;
 int ENETC_PM0_RX_EN ;
 int ENETC_PM0_TX_EN ;
 int ENETC_PM1_CMD_CFG ;
 int ENETC_PMO_IFM_RG ;
 int ENETC_PTCMSDUR (int ) ;
 int ENETC_PTXMBAR ;
 int ENETC_RX_MAXFRM_SIZE ;
 int ENETC_SET_MAXFRM (int ) ;
 scalar_t__ enetc_global_rd (struct enetc_hw*,int ) ;
 int enetc_port_rd (struct enetc_hw*,int ) ;
 int enetc_port_wr (struct enetc_hw*,int ,int) ;

__attribute__((used)) static void enetc_configure_port_mac(struct enetc_hw *hw)
{
 enetc_port_wr(hw, ENETC_PM0_MAXFRM,
        ENETC_SET_MAXFRM(ENETC_RX_MAXFRM_SIZE));

 enetc_port_wr(hw, ENETC_PTCMSDUR(0), ENETC_MAC_MAXFRM_SIZE);
 enetc_port_wr(hw, ENETC_PTXMBAR, 2 * ENETC_MAC_MAXFRM_SIZE);

 enetc_port_wr(hw, ENETC_PM0_CMD_CFG, ENETC_PM0_CMD_PHY_TX_EN |
        ENETC_PM0_CMD_TXP | ENETC_PM0_PROMISC |
        ENETC_PM0_TX_EN | ENETC_PM0_RX_EN);

 enetc_port_wr(hw, ENETC_PM1_CMD_CFG, ENETC_PM0_CMD_PHY_TX_EN |
        ENETC_PM0_CMD_TXP | ENETC_PM0_PROMISC |
        ENETC_PM0_TX_EN | ENETC_PM0_RX_EN);

 if (enetc_port_rd(hw, ENETC_PM0_IF_MODE) & ENETC_PMO_IFM_RG)
  enetc_port_wr(hw, ENETC_PM0_IF_MODE, ENETC_PM0_IFM_RGAUTO);
 if (enetc_global_rd(hw, ENETC_G_EPFBLPR(1)) == ENETC_G_EPFBLPR1_XGMII)
  enetc_port_wr(hw, ENETC_PM0_IF_MODE, ENETC_PM0_IFM_XGMII);
}
