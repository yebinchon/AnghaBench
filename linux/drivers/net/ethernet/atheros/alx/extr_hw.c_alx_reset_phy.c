
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct alx_hw {scalar_t__ lnk_patch; } ;


 int ALX_ANACTRL_DEF ;
 int ALX_CLDCTRL3_BP_CABLE1TH_DET_GT ;
 int ALX_CLDCTRL5_BP_VD_HLFBIAS ;
 int ALX_GREENCFG2_BP_GREEN ;
 int ALX_GREENCFG2_GATE_DFSE_EN ;
 int ALX_IER_LINK_DOWN ;
 int ALX_IER_LINK_UP ;
 int ALX_LEGCYPS_DEF ;
 int ALX_LPI_CTRL ;
 int ALX_LPI_CTRL_EN ;
 int ALX_MIIDBG_ANACTRL ;
 int ALX_MIIDBG_GREENCFG2 ;
 int ALX_MIIDBG_LEGCYPS ;
 int ALX_MIIDBG_SRDSYSMOD ;
 int ALX_MIIDBG_SYSMODCTRL ;
 int ALX_MIIDBG_TST100BTCFG ;
 int ALX_MIIDBG_TST10BTCFG ;
 int ALX_MIIEXT_ANEG ;
 int ALX_MIIEXT_CLDCTRL3 ;
 int ALX_MIIEXT_CLDCTRL5 ;
 int ALX_MIIEXT_LOCAL_EEEADV ;
 int ALX_MIIEXT_NLP78 ;
 int ALX_MIIEXT_NLP78_120M_DEF ;
 int ALX_MIIEXT_PCS ;
 int ALX_MIIEXT_S3DIG10 ;
 int ALX_MIIEXT_S3DIG10_DEF ;
 int ALX_MIIEXT_VDRVBIAS ;
 int ALX_MII_IER ;
 int ALX_PHY_CTRL ;
 int ALX_PHY_CTRL_CLS ;
 int ALX_PHY_CTRL_DSPRST_OUT ;
 int ALX_PHY_CTRL_DSPRST_TO ;
 int ALX_PHY_CTRL_GATE_25M ;
 int ALX_PHY_CTRL_HIB_EN ;
 int ALX_PHY_CTRL_HIB_PULSE ;
 int ALX_PHY_CTRL_IDDQ ;
 int ALX_PHY_CTRL_POWER_DOWN ;
 int ALX_PHY_CTRL_RST_ANALOG ;
 int ALX_SRDSYSMOD_DEF ;
 int ALX_SYSMODCTRL_IECHOADJ_DEF ;
 int ALX_TST100BTCFG_DEF ;
 int ALX_TST10BTCFG_DEF ;
 int ALX_VDRVBIAS_DEF ;
 int alx_read_mem32 (struct alx_hw*,int ) ;
 int alx_read_phy_dbg (struct alx_hw*,int ,int*) ;
 int alx_read_phy_ext (struct alx_hw*,int ,int ,int*) ;
 int alx_write_mem32 (struct alx_hw*,int ,int) ;
 int alx_write_phy_dbg (struct alx_hw*,int ,int) ;
 int alx_write_phy_ext (struct alx_hw*,int ,int ,int) ;
 int alx_write_phy_reg (struct alx_hw*,int ,int) ;
 int udelay (int) ;

void alx_reset_phy(struct alx_hw *hw)
{
 int i;
 u32 val;
 u16 phy_val;


 val = alx_read_mem32(hw, ALX_PHY_CTRL);
 val &= ~(ALX_PHY_CTRL_DSPRST_OUT | ALX_PHY_CTRL_IDDQ |
   ALX_PHY_CTRL_GATE_25M | ALX_PHY_CTRL_POWER_DOWN |
   ALX_PHY_CTRL_CLS);
 val |= ALX_PHY_CTRL_RST_ANALOG;

 val |= (ALX_PHY_CTRL_HIB_PULSE | ALX_PHY_CTRL_HIB_EN);
 alx_write_mem32(hw, ALX_PHY_CTRL, val);
 udelay(10);
 alx_write_mem32(hw, ALX_PHY_CTRL, val | ALX_PHY_CTRL_DSPRST_OUT);

 for (i = 0; i < ALX_PHY_CTRL_DSPRST_TO; i++)
  udelay(10);


 alx_write_phy_dbg(hw, ALX_MIIDBG_LEGCYPS, ALX_LEGCYPS_DEF);
 alx_write_phy_dbg(hw, ALX_MIIDBG_SYSMODCTRL,
     ALX_SYSMODCTRL_IECHOADJ_DEF);
 alx_write_phy_ext(hw, ALX_MIIEXT_PCS, ALX_MIIEXT_VDRVBIAS,
     ALX_VDRVBIAS_DEF);


 val = alx_read_mem32(hw, ALX_LPI_CTRL);
 alx_write_mem32(hw, ALX_LPI_CTRL, val & ~ALX_LPI_CTRL_EN);
 alx_write_phy_ext(hw, ALX_MIIEXT_ANEG, ALX_MIIEXT_LOCAL_EEEADV, 0);


 alx_write_phy_dbg(hw, ALX_MIIDBG_TST10BTCFG, ALX_TST10BTCFG_DEF);
 alx_write_phy_dbg(hw, ALX_MIIDBG_SRDSYSMOD, ALX_SRDSYSMOD_DEF);
 alx_write_phy_dbg(hw, ALX_MIIDBG_TST100BTCFG, ALX_TST100BTCFG_DEF);
 alx_write_phy_dbg(hw, ALX_MIIDBG_ANACTRL, ALX_ANACTRL_DEF);
 alx_read_phy_dbg(hw, ALX_MIIDBG_GREENCFG2, &phy_val);
 alx_write_phy_dbg(hw, ALX_MIIDBG_GREENCFG2,
     phy_val & ~ALX_GREENCFG2_GATE_DFSE_EN);

 alx_write_phy_ext(hw, ALX_MIIEXT_ANEG, ALX_MIIEXT_NLP78,
     ALX_MIIEXT_NLP78_120M_DEF);
 alx_write_phy_ext(hw, ALX_MIIEXT_ANEG, ALX_MIIEXT_S3DIG10,
     ALX_MIIEXT_S3DIG10_DEF);

 if (hw->lnk_patch) {

  alx_read_phy_ext(hw, ALX_MIIEXT_PCS, ALX_MIIEXT_CLDCTRL3,
     &phy_val);
  alx_write_phy_ext(hw, ALX_MIIEXT_PCS, ALX_MIIEXT_CLDCTRL3,
      phy_val | ALX_CLDCTRL3_BP_CABLE1TH_DET_GT);

  alx_read_phy_dbg(hw, ALX_MIIDBG_GREENCFG2, &phy_val);
  alx_write_phy_dbg(hw, ALX_MIIDBG_GREENCFG2,
      phy_val | ALX_GREENCFG2_BP_GREEN);

  alx_read_phy_ext(hw, ALX_MIIEXT_PCS, ALX_MIIEXT_CLDCTRL5,
     &phy_val);
  alx_write_phy_ext(hw, ALX_MIIEXT_PCS, ALX_MIIEXT_CLDCTRL5,
      phy_val | ALX_CLDCTRL5_BP_VD_HLFBIAS);
 }


 alx_write_phy_reg(hw, ALX_MII_IER, ALX_IER_LINK_UP | ALX_IER_LINK_DOWN);
}
