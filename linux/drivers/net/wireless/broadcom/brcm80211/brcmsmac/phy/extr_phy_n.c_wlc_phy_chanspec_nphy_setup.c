
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct nphy_sfo_cfg {int PHY_BW1a; int PHY_BW2; int PHY_BW3; int PHY_BW4; int PHY_BW5; int PHY_BW6; } ;
struct TYPE_8__ {int phy_rev; } ;
struct brcms_phy {int radio_chanspec; scalar_t__ nphy_txpwrctrl; scalar_t__ phy_spuravoid; int phy_isspuravoid; TYPE_3__ pubpi; TYPE_2__* sh; TYPE_4__* d11core; scalar_t__ nphy_aband_spurwar_en; } ;
struct TYPE_9__ {TYPE_1__* bus; } ;
struct TYPE_7__ {scalar_t__ chip; scalar_t__ chippkg; int physhim; } ;
struct TYPE_6__ {int drv_cc; } ;


 int BBCFG_RESETCCA ;
 int BBCFG_RESETRX ;
 scalar_t__ BCMA_CHIP_ID_BCM43224 ;
 scalar_t__ BCMA_CHIP_ID_BCM43225 ;
 scalar_t__ BCMA_CHIP_ID_BCM4716 ;
 scalar_t__ BCMA_CHIP_ID_BCM47162 ;
 scalar_t__ BCMA_PKG_ID_BCM4717 ;
 int BPHY_BB_CONFIG ;
 int BPHY_TEST ;
 int CHSPEC_CHANNEL (int) ;
 scalar_t__ CHSPEC_IS2G (int) ;
 int CHSPEC_IS40 (int) ;
 scalar_t__ CHSPEC_IS5G (int) ;
 int D11REGOFFS (int ) ;
 int MAC_PHY_FORCE_CLK ;
 int NPHY_BandControl_currentBand ;
 int NPHY_ClassifierCtrl_ofdm_en ;
 int NPHY_TO_BPHY_OFF ;
 scalar_t__ NREV_GE (int ,int) ;
 scalar_t__ NREV_LT (int ,int) ;
 scalar_t__ PHY_TPC_HW_OFF ;
 scalar_t__ SPURAVOID_DISABLE ;
 scalar_t__ SPURAVOID_FORCEON ;
 int and_phy_reg (struct brcms_phy*,int,int) ;
 int bcma_pmu_spuravoid_pllupdate (int *,int) ;
 int bcma_read16 (TYPE_4__*,int ) ;
 int bcma_write16 (TYPE_4__*,int ,int) ;
 int mod_phy_reg (struct brcms_phy*,int,int,int) ;
 int or_phy_reg (struct brcms_phy*,int,int) ;
 int psm_phy_hdr_param ;
 int read_phy_reg (struct brcms_phy*,int) ;
 int tsf_clk_frac_h ;
 int tsf_clk_frac_l ;
 int wlapi_bmac_core_phypll_ctl (int ,int) ;
 int wlapi_bmac_core_phypll_reset (int ) ;
 int wlc_phy_adjust_lnagaintbl_nphy (struct brcms_phy*) ;
 int wlc_phy_classifier_nphy (struct brcms_phy*,int ,int ) ;
 int wlc_phy_resetcca_nphy (struct brcms_phy*) ;
 int wlc_phy_spurwar_nphy (struct brcms_phy*) ;
 int wlc_phy_txlpfbw_nphy (struct brcms_phy*) ;
 int wlc_phy_txpwr_fixpower_nphy (struct brcms_phy*) ;
 int write_phy_reg (struct brcms_phy*,int,int) ;

__attribute__((used)) static void
wlc_phy_chanspec_nphy_setup(struct brcms_phy *pi, u16 chanspec,
       const struct nphy_sfo_cfg *ci)
{
 u16 val;

 val = read_phy_reg(pi, 0x09) & NPHY_BandControl_currentBand;
 if (CHSPEC_IS5G(chanspec) && !val) {

  val = bcma_read16(pi->d11core, D11REGOFFS(psm_phy_hdr_param));
  bcma_write16(pi->d11core, D11REGOFFS(psm_phy_hdr_param),
        (val | MAC_PHY_FORCE_CLK));

  or_phy_reg(pi, (NPHY_TO_BPHY_OFF + BPHY_BB_CONFIG),
      (BBCFG_RESETCCA | BBCFG_RESETRX));

  bcma_write16(pi->d11core, D11REGOFFS(psm_phy_hdr_param), val);

  or_phy_reg(pi, 0x09, NPHY_BandControl_currentBand);
 } else if (!CHSPEC_IS5G(chanspec) && val) {

  and_phy_reg(pi, 0x09, ~NPHY_BandControl_currentBand);

  val = bcma_read16(pi->d11core, D11REGOFFS(psm_phy_hdr_param));
  bcma_write16(pi->d11core, D11REGOFFS(psm_phy_hdr_param),
        (val | MAC_PHY_FORCE_CLK));

  and_phy_reg(pi, (NPHY_TO_BPHY_OFF + BPHY_BB_CONFIG),
       (u16) (~(BBCFG_RESETCCA | BBCFG_RESETRX)));

  bcma_write16(pi->d11core, D11REGOFFS(psm_phy_hdr_param), val);
 }

 write_phy_reg(pi, 0x1ce, ci->PHY_BW1a);
 write_phy_reg(pi, 0x1cf, ci->PHY_BW2);
 write_phy_reg(pi, 0x1d0, ci->PHY_BW3);

 write_phy_reg(pi, 0x1d1, ci->PHY_BW4);
 write_phy_reg(pi, 0x1d2, ci->PHY_BW5);
 write_phy_reg(pi, 0x1d3, ci->PHY_BW6);

 if (CHSPEC_CHANNEL(pi->radio_chanspec) == 14) {
  wlc_phy_classifier_nphy(pi, NPHY_ClassifierCtrl_ofdm_en, 0);

  or_phy_reg(pi, NPHY_TO_BPHY_OFF + BPHY_TEST, 0x800);
 } else {
  wlc_phy_classifier_nphy(pi, NPHY_ClassifierCtrl_ofdm_en,
     NPHY_ClassifierCtrl_ofdm_en);

  if (CHSPEC_IS2G(chanspec))
   and_phy_reg(pi, NPHY_TO_BPHY_OFF + BPHY_TEST, ~0x840);
 }

 if (pi->nphy_txpwrctrl == PHY_TPC_HW_OFF)
  wlc_phy_txpwr_fixpower_nphy(pi);

 if (NREV_LT(pi->pubpi.phy_rev, 3))
  wlc_phy_adjust_lnagaintbl_nphy(pi);

 wlc_phy_txlpfbw_nphy(pi);

 if (NREV_GE(pi->pubpi.phy_rev, 3)
     && (pi->phy_spuravoid != SPURAVOID_DISABLE)) {
  u8 spuravoid = 0;

  val = CHSPEC_CHANNEL(chanspec);
  if (!CHSPEC_IS40(pi->radio_chanspec)) {
   if (NREV_GE(pi->pubpi.phy_rev, 7)) {
    if ((val == 13) || (val == 14) || (val == 153))
     spuravoid = 1;
   } else if (((val >= 5) && (val <= 8)) || (val == 13)
       || (val == 14)) {
    spuravoid = 1;
   }
  } else if (NREV_GE(pi->pubpi.phy_rev, 7)) {
   if (val == 54)
    spuravoid = 1;
  } else if (pi->nphy_aband_spurwar_en &&
      ((val == 38) || (val == 102) || (val == 118))) {
   if ((pi->sh->chip == BCMA_CHIP_ID_BCM4716)
       && (pi->sh->chippkg == BCMA_PKG_ID_BCM4717)) {
    spuravoid = 0;
   } else {
    spuravoid = 1;
   }
  }

  if (pi->phy_spuravoid == SPURAVOID_FORCEON)
   spuravoid = 1;

  if ((pi->sh->chip == BCMA_CHIP_ID_BCM4716) ||
      (pi->sh->chip == BCMA_CHIP_ID_BCM43225)) {
   bcma_pmu_spuravoid_pllupdate(&pi->d11core->bus->drv_cc,
           spuravoid);
  } else {
   wlapi_bmac_core_phypll_ctl(pi->sh->physhim, 0);
   bcma_pmu_spuravoid_pllupdate(&pi->d11core->bus->drv_cc,
           spuravoid);
   wlapi_bmac_core_phypll_ctl(pi->sh->physhim, 1);
  }

  if ((pi->sh->chip == BCMA_CHIP_ID_BCM43224) ||
      (pi->sh->chip == BCMA_CHIP_ID_BCM43225)) {
   if (spuravoid == 1) {
    bcma_write16(pi->d11core,
          D11REGOFFS(tsf_clk_frac_l),
          0x5341);
    bcma_write16(pi->d11core,
          D11REGOFFS(tsf_clk_frac_h), 0x8);
   } else {
    bcma_write16(pi->d11core,
          D11REGOFFS(tsf_clk_frac_l),
          0x8889);
    bcma_write16(pi->d11core,
          D11REGOFFS(tsf_clk_frac_h), 0x8);
   }
  }

  if (!((pi->sh->chip == BCMA_CHIP_ID_BCM4716) ||
        (pi->sh->chip == BCMA_CHIP_ID_BCM47162)))
   wlapi_bmac_core_phypll_reset(pi->sh->physhim);

  mod_phy_reg(pi, 0x01, (0x1 << 15),
       ((spuravoid > 0) ? (0x1 << 15) : 0));

  wlc_phy_resetcca_nphy(pi);

  pi->phy_isspuravoid = (spuravoid > 0);
 }

 if (NREV_LT(pi->pubpi.phy_rev, 7))
  write_phy_reg(pi, 0x17e, 0x3830);

 wlc_phy_spurwar_nphy(pi);
}
