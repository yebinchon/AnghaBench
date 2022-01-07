
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct brcms_phy {int dummy; } ;


 int ** NPHY_IPA_REV4_txdigi_filtcoeffs ;
 int NPHY_NUM_DIG_FILT_COEFFS ;
 int write_phy_reg (struct brcms_phy*,int,int ) ;

__attribute__((used)) static void wlc_phy_extpa_set_tx_digi_filts_nphy(struct brcms_phy *pi)
{
 int j, type = 2;
 u16 addr_offset = 0x2c5;

 for (j = 0; j < NPHY_NUM_DIG_FILT_COEFFS; j++)
  write_phy_reg(pi, addr_offset + j,
         NPHY_IPA_REV4_txdigi_filtcoeffs[type][j]);
}
