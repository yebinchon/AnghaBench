
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct brcms_phy {scalar_t__ bw; int radio_chanspec; } ;


 int CHSPEC_CHANNEL (int ) ;
 scalar_t__ CHSPEC_IS5G (int ) ;
 int ** NPHY_IPA_REV4_txdigi_filtcoeffs ;
 int NPHY_NUM_DIG_FILT_COEFFS ;
 scalar_t__ WL_CHANSPEC_BW_40 ;
 int write_phy_reg (struct brcms_phy*,int,int ) ;

__attribute__((used)) static void wlc_phy_ipa_set_tx_digi_filts_nphy(struct brcms_phy *pi)
{
 int j, type;
 u16 addr_offset[] = { 0x186, 0x195, 0x2c5};

 for (type = 0; type < 3; type++) {
  for (j = 0; j < NPHY_NUM_DIG_FILT_COEFFS; j++)
   write_phy_reg(pi, addr_offset[type] + j,
          NPHY_IPA_REV4_txdigi_filtcoeffs[type][j]);
 }

 if (pi->bw == WL_CHANSPEC_BW_40) {
  for (j = 0; j < NPHY_NUM_DIG_FILT_COEFFS; j++)
   write_phy_reg(pi, 0x186 + j,
          NPHY_IPA_REV4_txdigi_filtcoeffs[3][j]);
 } else {
  if (CHSPEC_IS5G(pi->radio_chanspec)) {
   for (j = 0; j < NPHY_NUM_DIG_FILT_COEFFS; j++)
    write_phy_reg(pi, 0x186 + j,
     NPHY_IPA_REV4_txdigi_filtcoeffs[5][j]);
  }

  if (CHSPEC_CHANNEL(pi->radio_chanspec) == 14) {
   for (j = 0; j < NPHY_NUM_DIG_FILT_COEFFS; j++)
    write_phy_reg(pi, 0x2c5 + j,
     NPHY_IPA_REV4_txdigi_filtcoeffs[6][j]);
  }
 }
}
