
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct skge_port {int port; int wol; TYPE_1__* netdev; struct skge_hw* hw; } ;
struct skge_hw {scalar_t__ chip_id; scalar_t__ chip_rev; scalar_t__ regs; } ;
struct TYPE_2__ {int dev_addr; } ;


 scalar_t__ B0_CTST ;
 scalar_t__ B0_POWER_CTRL ;
 scalar_t__ B2_GP_IO ;
 scalar_t__ CHIP_ID_YUKON_LITE ;
 scalar_t__ CHIP_REV_YU_LITE_A3 ;
 int CS_RST_CLR ;
 int ETH_ALEN ;
 int GMAC_CTRL ;
 int GMAC_LINK_CTRL ;
 int GMC_RST_CLR ;
 int GMF_RST_SET ;
 int GMLC_RST_CLR ;
 int GM_GPCR_AU_FCT_DIS ;
 int GM_GPCR_DUP_FULL ;
 int GM_GPCR_FC_RX_DIS ;
 int GM_GPCR_FC_TX_DIS ;
 int GM_GPCR_RX_ENA ;
 int GM_GPCR_TX_ENA ;
 int GM_GP_CTRL ;
 int GPC_ANEG_1 ;
 int GPC_DIS_SLEEP ;
 int GPC_HWCFG_M_0 ;
 int GPC_HWCFG_M_1 ;
 int GPC_HWCFG_M_2 ;
 int GPC_HWCFG_M_3 ;
 int GPC_RST_CLR ;
 int GPC_RST_SET ;
 int GPHY_CTRL ;
 int GP_DIR_9 ;
 int GP_IO_9 ;
 int PC_VAUX_ENA ;
 int PC_VAUX_ON ;
 int PC_VCC_ENA ;
 int PC_VCC_OFF ;
 int PHY_AN_100FULL ;
 int PHY_AN_100HALF ;
 int PHY_AN_10FULL ;
 int PHY_AN_10HALF ;
 int PHY_AN_CSMA ;
 int PHY_CT_ANE ;
 int PHY_CT_DUP_MD ;
 int PHY_CT_RESET ;
 int PHY_CT_RE_CFG ;
 int PHY_CT_SPS_LSB ;
 int PHY_MARV_1000T_CTRL ;
 int PHY_MARV_AUNE_ADV ;
 int PHY_MARV_CTRL ;
 int RX_GMF_CTRL_T ;
 scalar_t__ SK_REG (int,int ) ;
 int WAKE_MAGIC ;
 int WAKE_PHY ;
 int WOL_CTL_CLEAR_RESULT ;
 int WOL_CTL_DIS_LINK_CHG_UNIT ;
 int WOL_CTL_DIS_MAGIC_PKT_UNIT ;
 int WOL_CTL_DIS_PATTERN_UNIT ;
 int WOL_CTL_DIS_PME_ON_LINK_CHG ;
 int WOL_CTL_DIS_PME_ON_MAGIC_PKT ;
 int WOL_CTL_DIS_PME_ON_PATTERN ;
 int WOL_CTL_ENA_LINK_CHG_UNIT ;
 int WOL_CTL_ENA_MAGIC_PKT_UNIT ;
 int WOL_CTL_ENA_PME_ON_LINK_CHG ;
 int WOL_CTL_ENA_PME_ON_MAGIC_PKT ;
 int WOL_CTRL_STAT ;
 int WOL_MAC_ADDR ;
 scalar_t__ WOL_REGS (int,int ) ;
 int gm_phy_write (struct skge_hw*,int,int ,int) ;
 int gma_write16 (struct skge_hw*,int,int ,int) ;
 int memcpy_toio (scalar_t__,int ,int ) ;
 int skge_read32 (struct skge_hw*,scalar_t__) ;
 int skge_write16 (struct skge_hw*,scalar_t__,int) ;
 int skge_write32 (struct skge_hw*,scalar_t__,int) ;
 int skge_write8 (struct skge_hw*,scalar_t__,int) ;

__attribute__((used)) static void skge_wol_init(struct skge_port *skge)
{
 struct skge_hw *hw = skge->hw;
 int port = skge->port;
 u16 ctrl;

 skge_write16(hw, B0_CTST, CS_RST_CLR);
 skge_write16(hw, SK_REG(port, GMAC_LINK_CTRL), GMLC_RST_CLR);


 skge_write8(hw, B0_POWER_CTRL,
      PC_VAUX_ENA | PC_VCC_ENA | PC_VAUX_ON | PC_VCC_OFF);


 if (hw->chip_id == CHIP_ID_YUKON_LITE &&
     hw->chip_rev >= CHIP_REV_YU_LITE_A3) {
  u32 reg = skge_read32(hw, B2_GP_IO);
  reg |= GP_DIR_9;
  reg &= ~GP_IO_9;
  skge_write32(hw, B2_GP_IO, reg);
 }

 skge_write32(hw, SK_REG(port, GPHY_CTRL),
       GPC_DIS_SLEEP |
       GPC_HWCFG_M_3 | GPC_HWCFG_M_2 | GPC_HWCFG_M_1 | GPC_HWCFG_M_0 |
       GPC_ANEG_1 | GPC_RST_SET);

 skge_write32(hw, SK_REG(port, GPHY_CTRL),
       GPC_DIS_SLEEP |
       GPC_HWCFG_M_3 | GPC_HWCFG_M_2 | GPC_HWCFG_M_1 | GPC_HWCFG_M_0 |
       GPC_ANEG_1 | GPC_RST_CLR);

 skge_write32(hw, SK_REG(port, GMAC_CTRL), GMC_RST_CLR);


 gm_phy_write(hw, port, PHY_MARV_AUNE_ADV,
       (PHY_AN_100FULL | PHY_AN_100HALF |
        PHY_AN_10FULL | PHY_AN_10HALF | PHY_AN_CSMA));

 gm_phy_write(hw, port, PHY_MARV_1000T_CTRL, 0);
 gm_phy_write(hw, port, PHY_MARV_CTRL,
       PHY_CT_RESET | PHY_CT_SPS_LSB | PHY_CT_ANE |
       PHY_CT_RE_CFG | PHY_CT_DUP_MD);



 gma_write16(hw, port, GM_GP_CTRL,
      GM_GPCR_FC_TX_DIS|GM_GPCR_TX_ENA|GM_GPCR_RX_ENA|
      GM_GPCR_DUP_FULL|GM_GPCR_FC_RX_DIS|GM_GPCR_AU_FCT_DIS);


 memcpy_toio(hw->regs + WOL_REGS(port, WOL_MAC_ADDR),
      skge->netdev->dev_addr, ETH_ALEN);


 skge_write16(hw, WOL_REGS(port, WOL_CTRL_STAT), WOL_CTL_CLEAR_RESULT);
 ctrl = 0;
 if (skge->wol & WAKE_PHY)
  ctrl |= WOL_CTL_ENA_PME_ON_LINK_CHG|WOL_CTL_ENA_LINK_CHG_UNIT;
 else
  ctrl |= WOL_CTL_DIS_PME_ON_LINK_CHG|WOL_CTL_DIS_LINK_CHG_UNIT;

 if (skge->wol & WAKE_MAGIC)
  ctrl |= WOL_CTL_ENA_PME_ON_MAGIC_PKT|WOL_CTL_ENA_MAGIC_PKT_UNIT;
 else
  ctrl |= WOL_CTL_DIS_PME_ON_MAGIC_PKT|WOL_CTL_DIS_MAGIC_PKT_UNIT;

 ctrl |= WOL_CTL_DIS_PME_ON_PATTERN|WOL_CTL_DIS_PATTERN_UNIT;
 skge_write16(hw, WOL_REGS(port, WOL_CTRL_STAT), ctrl);


 skge_write8(hw, SK_REG(port, RX_GMF_CTRL_T), GMF_RST_SET);
}
