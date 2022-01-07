
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct bgmac {int stats_grabbed; int feature_flags; int net_dev; TYPE_1__* mii_bus; int mac_duplex; int mac_speed; int dev; int * rx_ring; int * tx_ring; } ;
typedef int buf ;
struct TYPE_2__ {int (* reset ) (TYPE_1__*) ;} ;


 int BCMA_CLKCTLST ;
 int BCMA_GMAC_CMN_PC_MTE ;
 int BCMA_GMAC_CMN_PHY_CTL ;
 int BGMAC_BCMA_CLKCTLST_MISC_PLL_REQ ;
 int BGMAC_BCMA_CLKCTLST_MISC_PLL_ST ;
 int BGMAC_CHIPCTL_1_IF_TYPE_MASK ;
 int BGMAC_CHIPCTL_1_IF_TYPE_MII ;
 int BGMAC_CHIPCTL_1_IF_TYPE_RGMII ;
 int BGMAC_CHIPCTL_1_IF_TYPE_RMII ;
 int BGMAC_CHIPCTL_1_SW_TYPE_EPHY ;
 int BGMAC_CHIPCTL_1_SW_TYPE_EPHYRMII ;
 int BGMAC_CHIPCTL_1_SW_TYPE_MASK ;
 int BGMAC_CHIPCTL_1_SW_TYPE_RGMII ;
 int BGMAC_CHIPCTL_4_IF_TYPE_MASK ;
 int BGMAC_CHIPCTL_4_IF_TYPE_MII ;
 int BGMAC_CHIPCTL_4_IF_TYPE_RGMII ;
 int BGMAC_CHIPCTL_4_SW_TYPE_EPHY ;
 int BGMAC_CHIPCTL_4_SW_TYPE_MASK ;
 int BGMAC_CHIPCTL_4_SW_TYPE_RGMII ;
 int BGMAC_CHIPCTL_7_IF_TYPE_MASK ;
 int BGMAC_CHIPCTL_7_IF_TYPE_RGMII ;
 int BGMAC_CMDCFG_CFE ;
 int BGMAC_CMDCFG_HD ;
 int BGMAC_CMDCFG_ML ;
 int BGMAC_CMDCFG_NLC ;
 int BGMAC_CMDCFG_PAD_EN ;
 int BGMAC_CMDCFG_PE ;
 int BGMAC_CMDCFG_PF ;
 int BGMAC_CMDCFG_PROM ;
 int BGMAC_CMDCFG_RE ;
 int BGMAC_CMDCFG_RED ;
 int BGMAC_CMDCFG_RL ;
 int BGMAC_CMDCFG_RPI ;
 int BGMAC_CMDCFG_SR_REV0 ;
 int BGMAC_CMDCFG_SR_REV4 ;
 int BGMAC_CMDCFG_TAI ;
 int BGMAC_CMDCFG_TE ;
 int BGMAC_CMDCFG_TPI ;
 int BGMAC_FEAT_CC4_IF_SW_TYPE ;
 int BGMAC_FEAT_CC4_IF_SW_TYPE_RGMII ;
 int BGMAC_FEAT_CC7_IF_TYPE_RGMII ;
 int BGMAC_FEAT_CMDCFG_SR_REV4 ;
 int BGMAC_FEAT_CMN_PHY_CTL ;
 int BGMAC_FEAT_IDM_MASK ;
 int BGMAC_FEAT_MISC_PLL_REQ ;
 int BGMAC_FEAT_SW_TYPE_EPHYRMII ;
 int BGMAC_FEAT_SW_TYPE_PHY ;
 int BGMAC_FEAT_SW_TYPE_RGMII ;
 int BGMAC_MAX_RX_RINGS ;
 int BGMAC_MAX_TX_RINGS ;
 int BGMAC_PC_MTE ;
 int BGMAC_PHY_CNTL ;
 int DUPLEX_UNKNOWN ;
 int SPEED_UNKNOWN ;
 scalar_t__ bcm47xx_nvram_getenv (char*,char*,int) ;
 int bgmac_cco_ctl_maskset (struct bgmac*,int,int,int) ;
 int bgmac_chip_reset_idm_config (struct bgmac*) ;
 int bgmac_clear_mib (struct bgmac*) ;
 scalar_t__ bgmac_clk_enabled (struct bgmac*) ;
 int bgmac_cmdcfg_maskset (struct bgmac*,int,int,int) ;
 int bgmac_cmn_maskset32 (struct bgmac*,int ,int ,int ) ;
 int bgmac_dma_rx_reset (struct bgmac*,int *) ;
 int bgmac_dma_tx_reset (struct bgmac*,int *) ;
 int bgmac_miiconfig (struct bgmac*) ;
 int bgmac_set (struct bgmac*,int ,int ) ;
 int bgmac_wait_value (struct bgmac*,int ,int ,int ,int) ;
 int dev_err (int ,char*,char*) ;
 scalar_t__ kstrtou8 (char*,int ,int*) ;
 int netdev_reset_queue (int ) ;
 int stub1 (TYPE_1__*) ;
 int udelay (int) ;

__attribute__((used)) static void bgmac_chip_reset(struct bgmac *bgmac)
{
 u32 cmdcfg_sr;
 int i;

 if (bgmac_clk_enabled(bgmac)) {
  if (!bgmac->stats_grabbed) {

   bgmac->stats_grabbed = 1;
  }

  for (i = 0; i < BGMAC_MAX_TX_RINGS; i++)
   bgmac_dma_tx_reset(bgmac, &bgmac->tx_ring[i]);

  bgmac_cmdcfg_maskset(bgmac, ~0, BGMAC_CMDCFG_ML, 0);
  udelay(1);

  for (i = 0; i < BGMAC_MAX_RX_RINGS; i++)
   bgmac_dma_rx_reset(bgmac, &bgmac->rx_ring[i]);


 }

 if (!(bgmac->feature_flags & BGMAC_FEAT_IDM_MASK))
  bgmac_chip_reset_idm_config(bgmac);


 if (bgmac->feature_flags & BGMAC_FEAT_MISC_PLL_REQ) {
  bgmac_set(bgmac, BCMA_CLKCTLST,
     BGMAC_BCMA_CLKCTLST_MISC_PLL_REQ);
  bgmac_wait_value(bgmac, BCMA_CLKCTLST,
     BGMAC_BCMA_CLKCTLST_MISC_PLL_ST,
     BGMAC_BCMA_CLKCTLST_MISC_PLL_ST,
     1000);
 }

 if (bgmac->feature_flags & BGMAC_FEAT_SW_TYPE_PHY) {
  u8 et_swtype = 0;
  u8 sw_type = BGMAC_CHIPCTL_1_SW_TYPE_EPHY |
        BGMAC_CHIPCTL_1_IF_TYPE_MII;
  char buf[4];

  if (bcm47xx_nvram_getenv("et_swtype", buf, sizeof(buf)) > 0) {
   if (kstrtou8(buf, 0, &et_swtype))
    dev_err(bgmac->dev, "Failed to parse et_swtype (%s)\n",
     buf);
   et_swtype &= 0x0f;
   et_swtype <<= 4;
   sw_type = et_swtype;
  } else if (bgmac->feature_flags & BGMAC_FEAT_SW_TYPE_EPHYRMII) {
   sw_type = BGMAC_CHIPCTL_1_IF_TYPE_RMII |
      BGMAC_CHIPCTL_1_SW_TYPE_EPHYRMII;
  } else if (bgmac->feature_flags & BGMAC_FEAT_SW_TYPE_RGMII) {
   sw_type = BGMAC_CHIPCTL_1_IF_TYPE_RGMII |
      BGMAC_CHIPCTL_1_SW_TYPE_RGMII;
  }
  bgmac_cco_ctl_maskset(bgmac, 1, ~(BGMAC_CHIPCTL_1_IF_TYPE_MASK |
        BGMAC_CHIPCTL_1_SW_TYPE_MASK),
          sw_type);
 } else if (bgmac->feature_flags & BGMAC_FEAT_CC4_IF_SW_TYPE) {
  u32 sw_type = BGMAC_CHIPCTL_4_IF_TYPE_MII |
         BGMAC_CHIPCTL_4_SW_TYPE_EPHY;
  u8 et_swtype = 0;
  char buf[4];

  if (bcm47xx_nvram_getenv("et_swtype", buf, sizeof(buf)) > 0) {
   if (kstrtou8(buf, 0, &et_swtype))
    dev_err(bgmac->dev, "Failed to parse et_swtype (%s)\n",
     buf);
   sw_type = (et_swtype & 0x0f) << 12;
  } else if (bgmac->feature_flags & BGMAC_FEAT_CC4_IF_SW_TYPE_RGMII) {
   sw_type = BGMAC_CHIPCTL_4_IF_TYPE_RGMII |
      BGMAC_CHIPCTL_4_SW_TYPE_RGMII;
  }
  bgmac_cco_ctl_maskset(bgmac, 4, ~(BGMAC_CHIPCTL_4_IF_TYPE_MASK |
        BGMAC_CHIPCTL_4_SW_TYPE_MASK),
          sw_type);
 } else if (bgmac->feature_flags & BGMAC_FEAT_CC7_IF_TYPE_RGMII) {
  bgmac_cco_ctl_maskset(bgmac, 7, ~BGMAC_CHIPCTL_7_IF_TYPE_MASK,
          BGMAC_CHIPCTL_7_IF_TYPE_RGMII);
 }






 if (bgmac->feature_flags & BGMAC_FEAT_CMDCFG_SR_REV4)
  cmdcfg_sr = BGMAC_CMDCFG_SR_REV4;
 else
  cmdcfg_sr = BGMAC_CMDCFG_SR_REV0;

 bgmac_cmdcfg_maskset(bgmac,
        ~(BGMAC_CMDCFG_TE |
          BGMAC_CMDCFG_RE |
          BGMAC_CMDCFG_RPI |
          BGMAC_CMDCFG_TAI |
          BGMAC_CMDCFG_HD |
          BGMAC_CMDCFG_ML |
          BGMAC_CMDCFG_CFE |
          BGMAC_CMDCFG_RL |
          BGMAC_CMDCFG_RED |
          BGMAC_CMDCFG_PE |
          BGMAC_CMDCFG_TPI |
          BGMAC_CMDCFG_PAD_EN |
          BGMAC_CMDCFG_PF),
        BGMAC_CMDCFG_PROM |
        BGMAC_CMDCFG_NLC |
        BGMAC_CMDCFG_CFE |
        cmdcfg_sr,
        0);
 bgmac->mac_speed = SPEED_UNKNOWN;
 bgmac->mac_duplex = DUPLEX_UNKNOWN;

 bgmac_clear_mib(bgmac);
 if (bgmac->feature_flags & BGMAC_FEAT_CMN_PHY_CTL)
  bgmac_cmn_maskset32(bgmac, BCMA_GMAC_CMN_PHY_CTL, ~0,
        BCMA_GMAC_CMN_PC_MTE);
 else
  bgmac_set(bgmac, BGMAC_PHY_CNTL, BGMAC_PC_MTE);
 bgmac_miiconfig(bgmac);
 if (bgmac->mii_bus)
  bgmac->mii_bus->reset(bgmac->mii_bus);

 netdev_reset_queue(bgmac->net_dev);
}
