
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int phy_rev; } ;
struct brcms_phy {int nphy_anarxlpf_adjusted; int nphy_rccal_value; int radio_chanspec; TYPE_1__ pubpi; } ;


 int CHSPEC_CHANNEL (int ) ;
 scalar_t__ CHSPEC_IS40 (int ) ;
 scalar_t__ NREV_GE (int ,int) ;
 scalar_t__ NREV_LT (int ,int) ;
 int RADIO_2056_RX0 ;
 int RADIO_2056_RX_RXLPF_RCCAL_LPC ;
 int write_radio_reg (struct brcms_phy*,int,int) ;

__attribute__((used)) static void
wlc_phy_adjust_rx_analpfbw_nphy(struct brcms_phy *pi, u16 reduction_factr)
{
 if (NREV_GE(pi->pubpi.phy_rev, 3) && NREV_LT(pi->pubpi.phy_rev, 7)) {
  if ((CHSPEC_CHANNEL(pi->radio_chanspec) == 11) &&
      CHSPEC_IS40(pi->radio_chanspec)) {
   if (!pi->nphy_anarxlpf_adjusted) {
    write_radio_reg(pi,
      (RADIO_2056_RX_RXLPF_RCCAL_LPC |
       RADIO_2056_RX0),
      ((pi->nphy_rccal_value +
        reduction_factr) | 0x80));

    pi->nphy_anarxlpf_adjusted = 1;
   }
  } else {
   if (pi->nphy_anarxlpf_adjusted) {
    write_radio_reg(pi,
      (RADIO_2056_RX_RXLPF_RCCAL_LPC |
       RADIO_2056_RX0),
      (pi->nphy_rccal_value | 0x80));

    pi->nphy_anarxlpf_adjusted = 0;
   }
  }
 }
}
