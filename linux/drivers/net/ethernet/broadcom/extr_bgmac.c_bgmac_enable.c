
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct bgmac {int feature_flags; } ;


 int BCMA_CLKCTLST ;
 int BCMA_CLKCTLST_FORCEHT ;
 int BGMAC_CHIPCTL_1_RXC_DLL_BYPASS ;
 int BGMAC_CMDCFG ;
 int BGMAC_CMDCFG_RE ;
 int BGMAC_CMDCFG_SR_REV0 ;
 int BGMAC_CMDCFG_SR_REV4 ;
 int BGMAC_CMDCFG_TE ;
 int BGMAC_DEV_STATUS ;
 int BGMAC_DS_MM_MASK ;
 int BGMAC_DS_MM_SHIFT ;
 int BGMAC_FEAT_CLKCTLST ;
 int BGMAC_FEAT_CMDCFG_SR_REV4 ;
 int BGMAC_FEAT_FLW_CTRL1 ;
 int BGMAC_FEAT_FLW_CTRL2 ;
 int BGMAC_FEAT_SET_RXQ_CLK ;
 int BGMAC_FLOW_CTL_THRESH ;
 int BGMAC_PAUSE_CTL ;
 int BGMAC_RXQ_CTL ;
 int BGMAC_RXQ_CTL_MDP_MASK ;
 int BGMAC_RXQ_CTL_MDP_SHIFT ;
 int bgmac_cco_ctl_maskset (struct bgmac*,int,int ,int ) ;
 int bgmac_cmdcfg_maskset (struct bgmac*,int,int,int) ;
 int bgmac_get_bus_clock (struct bgmac*) ;
 int bgmac_read (struct bgmac*,int ) ;
 int bgmac_set (struct bgmac*,int ,int ) ;
 int bgmac_write (struct bgmac*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void bgmac_enable(struct bgmac *bgmac)
{
 u32 cmdcfg_sr;
 u32 cmdcfg;
 u32 mode;

 if (bgmac->feature_flags & BGMAC_FEAT_CMDCFG_SR_REV4)
  cmdcfg_sr = BGMAC_CMDCFG_SR_REV4;
 else
  cmdcfg_sr = BGMAC_CMDCFG_SR_REV0;

 cmdcfg = bgmac_read(bgmac, BGMAC_CMDCFG);
 bgmac_cmdcfg_maskset(bgmac, ~(BGMAC_CMDCFG_TE | BGMAC_CMDCFG_RE),
        cmdcfg_sr, 1);
 udelay(2);
 cmdcfg |= BGMAC_CMDCFG_TE | BGMAC_CMDCFG_RE;
 bgmac_write(bgmac, BGMAC_CMDCFG, cmdcfg);

 mode = (bgmac_read(bgmac, BGMAC_DEV_STATUS) & BGMAC_DS_MM_MASK) >>
  BGMAC_DS_MM_SHIFT;
 if (bgmac->feature_flags & BGMAC_FEAT_CLKCTLST || mode != 0)
  bgmac_set(bgmac, BCMA_CLKCTLST, BCMA_CLKCTLST_FORCEHT);
 if (!(bgmac->feature_flags & BGMAC_FEAT_CLKCTLST) && mode == 2)
  bgmac_cco_ctl_maskset(bgmac, 1, ~0,
          BGMAC_CHIPCTL_1_RXC_DLL_BYPASS);

 if (bgmac->feature_flags & (BGMAC_FEAT_FLW_CTRL1 |
        BGMAC_FEAT_FLW_CTRL2)) {
  u32 fl_ctl;

  if (bgmac->feature_flags & BGMAC_FEAT_FLW_CTRL1)
   fl_ctl = 0x2300e1;
  else
   fl_ctl = 0x03cb04cb;

  bgmac_write(bgmac, BGMAC_FLOW_CTL_THRESH, fl_ctl);
  bgmac_write(bgmac, BGMAC_PAUSE_CTL, 0x27fff);
 }

 if (bgmac->feature_flags & BGMAC_FEAT_SET_RXQ_CLK) {
  u32 rxq_ctl;
  u16 bp_clk;
  u8 mdp;

  rxq_ctl = bgmac_read(bgmac, BGMAC_RXQ_CTL);
  rxq_ctl &= ~BGMAC_RXQ_CTL_MDP_MASK;
  bp_clk = bgmac_get_bus_clock(bgmac) / 1000000;
  mdp = (bp_clk * 128 / 1000) - 3;
  rxq_ctl |= (mdp << BGMAC_RXQ_CTL_MDP_SHIFT);
  bgmac_write(bgmac, BGMAC_RXQ_CTL, rxq_ctl);
 }
}
