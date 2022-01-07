
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ radioid; int phy_rev; } ;
struct brcms_phy {TYPE_1__ pubpi; int radio_chanspec; } ;


 scalar_t__ BCM2057_ID ;
 scalar_t__ CHSPEC_IS5G (int ) ;
 scalar_t__ NREV_GE (int ,int) ;
 scalar_t__ PHY_CORE_0 ;
 scalar_t__ PHY_IPA (struct brcms_phy*) ;
 int RADIO_2056_TX0 ;
 int RADIO_2056_TX1 ;
 int RADIO_2056_TX_TX_SSI_MUX ;
 int RADIO_2057_IQTEST_SEL_PU ;
 int RADIO_2057_TX0_TX_SSI_MUX ;
 int RADIO_2057_TX1_TX_SSI_MUX ;
 int write_radio_reg (struct brcms_phy*,int,int) ;

__attribute__((used)) static void brcms_phy_wr_tx_mux(struct brcms_phy *pi, u8 core)
{
 if (PHY_IPA(pi)) {
  if (NREV_GE(pi->pubpi.phy_rev, 7))
   write_radio_reg(pi,
     ((core == PHY_CORE_0) ?
      RADIO_2057_TX0_TX_SSI_MUX :
      RADIO_2057_TX1_TX_SSI_MUX),
     (CHSPEC_IS5G(pi->radio_chanspec) ?
     0xc : 0xe));
  else
   write_radio_reg(pi,
     RADIO_2056_TX_TX_SSI_MUX |
     ((core == PHY_CORE_0) ?
      RADIO_2056_TX0 : RADIO_2056_TX1),
     (CHSPEC_IS5G(pi->radio_chanspec) ?
     0xc : 0xe));
 } else {
  if (NREV_GE(pi->pubpi.phy_rev, 7)) {
   write_radio_reg(pi,
     ((core == PHY_CORE_0) ?
      RADIO_2057_TX0_TX_SSI_MUX :
      RADIO_2057_TX1_TX_SSI_MUX),
     0x11);

   if (pi->pubpi.radioid == BCM2057_ID)
    write_radio_reg(pi,
      RADIO_2057_IQTEST_SEL_PU, 0x1);

  } else {
   write_radio_reg(pi,
     RADIO_2056_TX_TX_SSI_MUX |
     ((core == PHY_CORE_0) ?
      RADIO_2056_TX0 : RADIO_2056_TX1),
     0x11);
  }
 }
}
