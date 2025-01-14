
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {scalar_t__ nphy_gain_boost; int radio_chanspec; TYPE_1__* sh; } ;
struct TYPE_2__ {int sromrev; int boardflags2; } ;


 int BFL2_RXBB_INT_REG_DIS ;
 int RADIO_2055_CAL_COUNTER_OUT2 ;
 int RADIO_2055_CAL_LPO_CNTRL ;
 int RADIO_2055_CAL_LPO_ENABLE ;
 int RADIO_2055_CAL_MISC ;
 int RADIO_2055_CORE1_LNA_GAINBST ;
 int RADIO_2055_CORE1_RXBB_LPF ;
 int RADIO_2055_CORE1_RXBB_MIDAC_HIPAS ;
 int RADIO_2055_CORE1_RXBB_REGULATOR ;
 int RADIO_2055_CORE1_RXRF_SPC1 ;
 int RADIO_2055_CORE2_LNA_GAINBST ;
 int RADIO_2055_CORE2_RXBB_LPF ;
 int RADIO_2055_CORE2_RXBB_MIDAC_HIPAS ;
 int RADIO_2055_CORE2_RXBB_REGULATOR ;
 int RADIO_2055_CORE2_RXRF_SPC1 ;
 int RADIO_2055_GAINBST_CODE ;
 int RADIO_2055_GAINBST_DISABLE ;
 int RADIO_2055_GAINBST_VAL_MASK ;
 int RADIO_2055_JTAGCTRL_MASK ;
 int RADIO_2055_JTAGSYNC_MASK ;
 int RADIO_2055_MASTER_CNTRL1 ;
 int RADIO_2055_RCAL_DONE ;
 int RADIO_2055_RRCAL_RST_N ;
 int RADIO_2055_RRCAL_START ;
 int RADIO_2055_RRCCAL_N_OPT_SEL ;
 int SPINWAIT (int,int) ;
 scalar_t__ WARN (int,char*) ;
 int and_radio_reg (struct brcms_phy*,int ,int) ;
 int mod_radio_reg (struct brcms_phy*,int ,int,int) ;
 int or_radio_reg (struct brcms_phy*,int ,int) ;
 int read_radio_reg (struct brcms_phy*,int ) ;
 int udelay (int) ;
 int wlc_phy_chanspec_set (struct brcms_phy_pub*,int ) ;
 int write_radio_reg (struct brcms_phy*,int ,int) ;

__attribute__((used)) static void wlc_phy_radio_postinit_2055(struct brcms_phy *pi)
{

 and_radio_reg(pi, RADIO_2055_MASTER_CNTRL1,
        ~(RADIO_2055_JTAGCTRL_MASK | RADIO_2055_JTAGSYNC_MASK));

 if (((pi->sh->sromrev >= 4)
      && !(pi->sh->boardflags2 & BFL2_RXBB_INT_REG_DIS))
     || ((pi->sh->sromrev < 4))) {
  and_radio_reg(pi, RADIO_2055_CORE1_RXBB_REGULATOR, 0x7F);
  and_radio_reg(pi, RADIO_2055_CORE2_RXBB_REGULATOR, 0x7F);
 }

 mod_radio_reg(pi, RADIO_2055_RRCCAL_N_OPT_SEL, 0x3F, 0x2C);
 write_radio_reg(pi, RADIO_2055_CAL_MISC, 0x3C);

 and_radio_reg(pi, RADIO_2055_CAL_MISC,
        ~(RADIO_2055_RRCAL_START | RADIO_2055_RRCAL_RST_N));

 or_radio_reg(pi, RADIO_2055_CAL_LPO_CNTRL, RADIO_2055_CAL_LPO_ENABLE);

 or_radio_reg(pi, RADIO_2055_CAL_MISC, RADIO_2055_RRCAL_RST_N);

 udelay(1000);

 or_radio_reg(pi, RADIO_2055_CAL_MISC, RADIO_2055_RRCAL_START);

 SPINWAIT(((read_radio_reg(pi, RADIO_2055_CAL_COUNTER_OUT2) &
     RADIO_2055_RCAL_DONE) != RADIO_2055_RCAL_DONE), 2000);

 if (WARN((read_radio_reg(pi, RADIO_2055_CAL_COUNTER_OUT2) &
    RADIO_2055_RCAL_DONE) != RADIO_2055_RCAL_DONE,
   "HW error: radio calibration1\n"))
  return;

 and_radio_reg(pi, RADIO_2055_CAL_LPO_CNTRL,
        ~(RADIO_2055_CAL_LPO_ENABLE));

 wlc_phy_chanspec_set((struct brcms_phy_pub *) pi, pi->radio_chanspec);

 write_radio_reg(pi, RADIO_2055_CORE1_RXBB_LPF, 9);
 write_radio_reg(pi, RADIO_2055_CORE2_RXBB_LPF, 9);

 write_radio_reg(pi, RADIO_2055_CORE1_RXBB_MIDAC_HIPAS, 0x83);
 write_radio_reg(pi, RADIO_2055_CORE2_RXBB_MIDAC_HIPAS, 0x83);

 mod_radio_reg(pi, RADIO_2055_CORE1_LNA_GAINBST,
        RADIO_2055_GAINBST_VAL_MASK, RADIO_2055_GAINBST_CODE);
 mod_radio_reg(pi, RADIO_2055_CORE2_LNA_GAINBST,
        RADIO_2055_GAINBST_VAL_MASK, RADIO_2055_GAINBST_CODE);
 if (pi->nphy_gain_boost) {
  and_radio_reg(pi, RADIO_2055_CORE1_RXRF_SPC1,
         ~(RADIO_2055_GAINBST_DISABLE));
  and_radio_reg(pi, RADIO_2055_CORE2_RXRF_SPC1,
         ~(RADIO_2055_GAINBST_DISABLE));
 } else {
  or_radio_reg(pi, RADIO_2055_CORE1_RXRF_SPC1,
        RADIO_2055_GAINBST_DISABLE);
  or_radio_reg(pi, RADIO_2055_CORE2_RXRF_SPC1,
        RADIO_2055_GAINBST_DISABLE);
 }

 udelay(2);
}
