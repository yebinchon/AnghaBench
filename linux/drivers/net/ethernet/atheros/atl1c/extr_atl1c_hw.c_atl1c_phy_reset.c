
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct pci_dev {int dev; } ;
struct atl1c_hw {int ctrl_flags; scalar_t__ nic_type; struct atl1c_adapter* adapter; } ;
struct atl1c_adapter {struct pci_dev* pdev; } ;


 int ANACTRL_DEF ;
 int ATL1C_HIB_DISABLE ;
 int AT_READ_REG (struct atl1c_hw*,int ,int*) ;
 int AT_WRITE_FLUSH (struct atl1c_hw*) ;
 int AT_WRITE_REG (struct atl1c_hw*,int ,int) ;
 int CABLE1TH_DET_EN ;
 int CFGLPSPD_RSTCNT_CLK125SW ;
 int GPHY_CTRL_CLS ;
 int GPHY_CTRL_EXT_RESET ;
 int GPHY_CTRL_EXT_RST_TO ;
 int GPHY_CTRL_GATE_25M_EN ;
 int GPHY_CTRL_HIB_EN ;
 int GPHY_CTRL_HIB_PULSE ;
 int GPHY_CTRL_PHY_IDDQ ;
 int GPHY_CTRL_PWDOWN_HW ;
 int GPHY_CTRL_SEL_ANA_RST ;
 int HIBNEG_PSHIB_EN ;
 int IER_LINK_DOWN ;
 int IER_LINK_UP ;
 int L1C_LEGCYPS_DEF ;
 int L1D_LEGCYPS_DEF ;
 int L2CB_CLDCTRL3 ;
 int LEGCYPS_EN ;
 int LPI_CTRL_EN ;
 int MIIDBG_ANACTRL ;
 int MIIDBG_CABLE1TH_DET ;
 int MIIDBG_CFGLPSPD ;
 int MIIDBG_HIBNEG ;
 int MIIDBG_LEGCYPS ;
 int MIIDBG_SRDSYSMOD ;
 int MIIDBG_SYSMODCTRL ;
 int MIIDBG_TST100BTCFG ;
 int MIIDBG_TST10BTCFG ;
 int MIIDBG_VOLT_CTRL ;
 int MIIEXT_ANEG ;
 int MIIEXT_CLDCTRL3 ;
 int MIIEXT_LOCAL_EEEADV ;
 int MIIEXT_PCS ;
 int MII_IER ;
 int REG_GPHY_CTRL ;
 int REG_LPI_CTRL ;
 int SRDSYSMOD_DEF ;
 int SYSMODCTRL_IECHOADJ_DEF ;
 int TST100BTCFG_DEF ;
 int TST100BTCFG_LITCH_EN ;
 int TST10BTCFG_DEF ;
 int VOLT_CTRL_SWLOWEST ;
 scalar_t__ athr_l1d ;
 scalar_t__ athr_l1d_2 ;
 scalar_t__ athr_l2c_b ;
 scalar_t__ athr_l2c_b2 ;
 int atl1c_read_phy_dbg (struct atl1c_hw*,int ,int*) ;
 int atl1c_write_phy_dbg (struct atl1c_hw*,int ,int) ;
 int atl1c_write_phy_ext (struct atl1c_hw*,int ,int ,int ) ;
 int atl1c_write_phy_reg (struct atl1c_hw*,int ,int) ;
 int dev_err (int *,char*) ;
 scalar_t__ netif_msg_hw (struct atl1c_adapter*) ;
 int udelay (int) ;

int atl1c_phy_reset(struct atl1c_hw *hw)
{
 struct atl1c_adapter *adapter = hw->adapter;
 struct pci_dev *pdev = adapter->pdev;
 u16 phy_data;
 u32 phy_ctrl_data, lpi_ctrl;
 int err;


 AT_READ_REG(hw, REG_GPHY_CTRL, &phy_ctrl_data);
 phy_ctrl_data &= ~(GPHY_CTRL_EXT_RESET | GPHY_CTRL_PHY_IDDQ |
  GPHY_CTRL_GATE_25M_EN | GPHY_CTRL_PWDOWN_HW | GPHY_CTRL_CLS);
 phy_ctrl_data |= GPHY_CTRL_SEL_ANA_RST;
 if (!(hw->ctrl_flags & ATL1C_HIB_DISABLE))
  phy_ctrl_data |= (GPHY_CTRL_HIB_EN | GPHY_CTRL_HIB_PULSE);
 else
  phy_ctrl_data &= ~(GPHY_CTRL_HIB_EN | GPHY_CTRL_HIB_PULSE);
 AT_WRITE_REG(hw, REG_GPHY_CTRL, phy_ctrl_data);
 AT_WRITE_FLUSH(hw);
 udelay(10);
 AT_WRITE_REG(hw, REG_GPHY_CTRL, phy_ctrl_data | GPHY_CTRL_EXT_RESET);
 AT_WRITE_FLUSH(hw);
 udelay(10 * GPHY_CTRL_EXT_RST_TO);


 if (hw->nic_type == athr_l2c_b) {
  atl1c_read_phy_dbg(hw, MIIDBG_CFGLPSPD, &phy_data);
  atl1c_write_phy_dbg(hw, MIIDBG_CFGLPSPD,
   phy_data & ~CFGLPSPD_RSTCNT_CLK125SW);
 }


 if (hw->nic_type == athr_l2c_b || hw->nic_type == athr_l2c_b2) {
  atl1c_read_phy_dbg(hw, MIIDBG_CABLE1TH_DET, &phy_data);
  phy_data |= CABLE1TH_DET_EN;
  atl1c_write_phy_dbg(hw, MIIDBG_CABLE1TH_DET, phy_data);
 }


 if (!(hw->ctrl_flags & ATL1C_HIB_DISABLE)) {
  if (hw->nic_type == athr_l2c_b || hw->nic_type == athr_l2c_b2) {
   atl1c_read_phy_dbg(hw, MIIDBG_VOLT_CTRL, &phy_data);
   phy_data &= ~VOLT_CTRL_SWLOWEST;
   atl1c_write_phy_dbg(hw, MIIDBG_VOLT_CTRL, phy_data);
  }

  phy_data =
   hw->nic_type == athr_l1d || hw->nic_type == athr_l1d_2 ?
   L1D_LEGCYPS_DEF : L1C_LEGCYPS_DEF;
  atl1c_write_phy_dbg(hw, MIIDBG_LEGCYPS, phy_data);

  atl1c_write_phy_dbg(hw, MIIDBG_SYSMODCTRL,
   SYSMODCTRL_IECHOADJ_DEF);
 } else {

  atl1c_read_phy_dbg(hw, MIIDBG_LEGCYPS, &phy_data);
  atl1c_write_phy_dbg(hw, MIIDBG_LEGCYPS,
   phy_data & ~LEGCYPS_EN);

  atl1c_read_phy_dbg(hw, MIIDBG_HIBNEG, &phy_data);
  atl1c_write_phy_dbg(hw, MIIDBG_HIBNEG,
   phy_data & HIBNEG_PSHIB_EN);
 }

 if (hw->nic_type == athr_l1d || hw->nic_type == athr_l1d_2 ||
     hw->nic_type == athr_l2c_b2) {
  AT_READ_REG(hw, REG_LPI_CTRL, &lpi_ctrl);
  AT_WRITE_REG(hw, REG_LPI_CTRL, lpi_ctrl & ~LPI_CTRL_EN);
  atl1c_write_phy_ext(hw, MIIEXT_ANEG, MIIEXT_LOCAL_EEEADV, 0);
  atl1c_write_phy_ext(hw, MIIEXT_PCS, MIIEXT_CLDCTRL3,
   L2CB_CLDCTRL3);
 }


 atl1c_write_phy_dbg(hw, MIIDBG_ANACTRL, ANACTRL_DEF);
 atl1c_write_phy_dbg(hw, MIIDBG_SRDSYSMOD, SRDSYSMOD_DEF);
 atl1c_write_phy_dbg(hw, MIIDBG_TST10BTCFG, TST10BTCFG_DEF);

 atl1c_write_phy_dbg(hw, MIIDBG_TST100BTCFG,
  TST100BTCFG_DEF | TST100BTCFG_LITCH_EN);


 phy_data = IER_LINK_UP | IER_LINK_DOWN;
 err = atl1c_write_phy_reg(hw, MII_IER, phy_data);
 if (err) {
  if (netif_msg_hw(adapter))
   dev_err(&pdev->dev,
    "Error enable PHY linkChange Interrupt\n");
  return err;
 }
 return 0;
}
