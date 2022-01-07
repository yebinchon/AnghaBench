
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int radiorev; int phy_rev; } ;
struct brcms_phy {int* nphy_txcal_pwr_idx; int nphy_txcal_bbmult; int radio_chanspec; TYPE_2__ pubpi; TYPE_1__* sh; scalar_t__ use_int_tx_iqlo_cal_nphy; } ;
struct TYPE_3__ {int hw_phytxchain; } ;


 scalar_t__ CHSPEC_IS2G (int ) ;
 scalar_t__ NREV_GE (int ,int) ;
 scalar_t__ NREV_IS (int ,int) ;
 scalar_t__ NREV_LT (int ,int) ;
 scalar_t__ PHY_IPA (struct brcms_phy*) ;
 int wlc_phy_cal_txgainctrl_nphy (struct brcms_phy*,int,int) ;
 int wlc_phy_internal_cal_txgain_nphy (struct brcms_phy*) ;
 int wlc_phy_table_read_nphy (struct brcms_phy*,int,int,int,int,int *) ;
 int wlc_phy_txpwr_index_nphy (struct brcms_phy*,int,int,int) ;

__attribute__((used)) static void wlc_phy_precal_txgain_nphy(struct brcms_phy *pi)
{
 bool save_bbmult = 0;
 u8 txcal_index_2057_rev5n7 = 0;
 u8 txcal_index_2057_rev3n4n6 = 10;

 if (pi->use_int_tx_iqlo_cal_nphy) {
  if (NREV_GE(pi->pubpi.phy_rev, 7)) {
   if ((pi->pubpi.radiorev == 3) ||
       (pi->pubpi.radiorev == 4) ||
       (pi->pubpi.radiorev == 6)) {

    pi->nphy_txcal_pwr_idx[0] =
     txcal_index_2057_rev3n4n6;
    pi->nphy_txcal_pwr_idx[1] =
     txcal_index_2057_rev3n4n6;
    wlc_phy_txpwr_index_nphy(
     pi, 3,
     txcal_index_2057_rev3n4n6,
     0);
   } else {

    pi->nphy_txcal_pwr_idx[0] =
     txcal_index_2057_rev5n7;
    pi->nphy_txcal_pwr_idx[1] =
     txcal_index_2057_rev5n7;
    wlc_phy_txpwr_index_nphy(
     pi, 3,
     txcal_index_2057_rev5n7,
     0);
   }
   save_bbmult = 1;

  } else if (NREV_LT(pi->pubpi.phy_rev, 5)) {
   wlc_phy_cal_txgainctrl_nphy(pi, 11, 0);
   if (pi->sh->hw_phytxchain != 3) {
    pi->nphy_txcal_pwr_idx[1] =
     pi->nphy_txcal_pwr_idx[0];
    wlc_phy_txpwr_index_nphy(pi, 3,
        pi->
        nphy_txcal_pwr_idx[0],
        1);
    save_bbmult = 1;
   }

  } else if (NREV_IS(pi->pubpi.phy_rev, 5)) {
   if (PHY_IPA(pi)) {
    if (CHSPEC_IS2G(pi->radio_chanspec)) {
     wlc_phy_cal_txgainctrl_nphy(pi, 12,
            0);
    } else {
     pi->nphy_txcal_pwr_idx[0] = 80;
     pi->nphy_txcal_pwr_idx[1] = 80;
     wlc_phy_txpwr_index_nphy(pi, 3, 80,
         0);
     save_bbmult = 1;
    }
   } else {
    wlc_phy_internal_cal_txgain_nphy(pi);
    save_bbmult = 1;
   }

  } else if (NREV_IS(pi->pubpi.phy_rev, 6)) {
   if (PHY_IPA(pi)) {
    if (CHSPEC_IS2G(pi->radio_chanspec))
     wlc_phy_cal_txgainctrl_nphy(pi, 12,
            0);
    else
     wlc_phy_cal_txgainctrl_nphy(pi, 14,
            0);
   } else {
    wlc_phy_internal_cal_txgain_nphy(pi);
    save_bbmult = 1;
   }
  }

 } else {
  wlc_phy_cal_txgainctrl_nphy(pi, 10, 0);
 }

 if (save_bbmult)
  wlc_phy_table_read_nphy(pi, 15, 1, 87, 16,
     &pi->nphy_txcal_bbmult);
}
