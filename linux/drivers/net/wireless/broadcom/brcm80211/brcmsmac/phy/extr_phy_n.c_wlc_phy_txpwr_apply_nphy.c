
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
typedef int u8 ;
typedef int u16 ;
struct TYPE_4__ {int phy_rev; } ;
struct brcms_phy {int cck2gpo; int ofdm2gpo; int* mcs2gpo; int ofdm5gpo; int* mcs5gpo; int ofdm5glpo; int* mcs5glpo; int ofdm5ghpo; int* mcs5ghpo; TYPE_2__ pubpi; int * tx_srom_max_rate_5g_hi; int bw405ghpo; int stbc5ghpo; int cdd5ghpo; TYPE_1__* nphy_pwrctrl_info; int * tx_srom_max_rate_5g_low; int bw405glpo; int stbc5glpo; int cdd5glpo; int * tx_srom_max_rate_5g_mid; int bw405gpo; int stbc5gpo; int cdd5gpo; int * tx_srom_max_rate_2g; int bw402gpo; int stbc2gpo; int cdd2gpo; } ;
struct TYPE_3__ {int max_pwr_5gh; int max_pwr_5gl; int max_pwr_5gm; int max_pwr_2g; } ;


 int CH_2G_GROUP ;
 int CH_5G_GROUP ;
 scalar_t__ NPHY_IS_SROM_REINTERPRET ;
 scalar_t__ NREV_GE (int ,int) ;
 size_t TXP_FIRST_CCK ;
 size_t TXP_FIRST_MCS_20_CDD ;
 size_t TXP_FIRST_MCS_20_SDM ;
 int TXP_FIRST_MCS_20_SISO ;
 size_t TXP_FIRST_MCS_20_STBC ;
 size_t TXP_FIRST_MCS_40_CDD ;
 size_t TXP_FIRST_MCS_40_SDM ;
 size_t TXP_FIRST_MCS_40_SISO ;
 size_t TXP_FIRST_MCS_40_STBC ;
 size_t TXP_FIRST_OFDM ;
 size_t TXP_FIRST_OFDM_20_CDD ;
 size_t TXP_FIRST_OFDM_40_CDD ;
 size_t TXP_FIRST_OFDM_40_SISO ;
 int TXP_LAST_CCK ;
 int TXP_LAST_MCS_20_CDD ;
 int TXP_LAST_MCS_20_SDM ;
 int TXP_LAST_MCS_20_SISO ;
 int TXP_LAST_MCS_20_STBC ;
 int TXP_LAST_MCS_40_CDD ;
 int TXP_LAST_MCS_40_SDM ;
 int TXP_LAST_MCS_40_SISO ;
 int TXP_LAST_MCS_40_STBC ;
 int TXP_LAST_OFDM ;
 int TXP_LAST_OFDM_20_CDD ;
 int TXP_LAST_OFDM_40_CDD ;
 int TXP_LAST_OFDM_40_SISO ;
 size_t TXP_MCS_32 ;
 int min (int ,int ) ;
 int wlc_phy_mcs_to_ofdm_powers_nphy (int *,size_t,int ,size_t) ;
 int wlc_phy_ofdm_to_mcs_powers_nphy (int *,int ,int ,size_t) ;
 int wlc_phy_txpwr_nphy_po_apply (int *,int ,size_t,int) ;
 int wlc_phy_txpwr_nphy_srom_convert (int *,int*,int ,size_t,int) ;

void wlc_phy_txpwr_apply_nphy(struct brcms_phy *pi)
{
 uint rate1, rate2, band_num;
 u8 tmp_bw40po = 0, tmp_cddpo = 0, tmp_stbcpo = 0;
 u8 tmp_max_pwr = 0;
 u16 pwr_offsets1[2], *pwr_offsets2 = ((void*)0);
 u8 *tx_srom_max_rate = ((void*)0);

 for (band_num = 0; band_num < (CH_2G_GROUP + CH_5G_GROUP);
      band_num++) {
  switch (band_num) {
  case 0:

   tmp_max_pwr = min(pi->nphy_pwrctrl_info[0].max_pwr_2g,
       pi->nphy_pwrctrl_info[1].max_pwr_2g);

   pwr_offsets1[0] = pi->cck2gpo;
   wlc_phy_txpwr_nphy_srom_convert(pi->tx_srom_max_rate_2g,
       pwr_offsets1,
       tmp_max_pwr,
       TXP_FIRST_CCK,
       TXP_LAST_CCK);

   pwr_offsets1[0] = (u16) (pi->ofdm2gpo & 0xffff);
   pwr_offsets1[1] =
    (u16) (pi->ofdm2gpo >> 16) & 0xffff;

   pwr_offsets2 = pi->mcs2gpo;

   tmp_cddpo = pi->cdd2gpo;
   tmp_stbcpo = pi->stbc2gpo;
   tmp_bw40po = pi->bw402gpo;

   tx_srom_max_rate = pi->tx_srom_max_rate_2g;
   break;
  case 1:

   tmp_max_pwr = min(pi->nphy_pwrctrl_info[0].max_pwr_5gm,
       pi->nphy_pwrctrl_info[1].max_pwr_5gm);

   pwr_offsets1[0] = (u16) (pi->ofdm5gpo & 0xffff);
   pwr_offsets1[1] =
    (u16) (pi->ofdm5gpo >> 16) & 0xffff;

   pwr_offsets2 = pi->mcs5gpo;

   tmp_cddpo = pi->cdd5gpo;
   tmp_stbcpo = pi->stbc5gpo;
   tmp_bw40po = pi->bw405gpo;

   tx_srom_max_rate = pi->tx_srom_max_rate_5g_mid;
   break;
  case 2:

   tmp_max_pwr = min(pi->nphy_pwrctrl_info[0].max_pwr_5gl,
       pi->nphy_pwrctrl_info[1].max_pwr_5gl);

   pwr_offsets1[0] = (u16) (pi->ofdm5glpo & 0xffff);
   pwr_offsets1[1] =
    (u16) (pi->ofdm5glpo >> 16) & 0xffff;

   pwr_offsets2 = pi->mcs5glpo;

   tmp_cddpo = pi->cdd5glpo;
   tmp_stbcpo = pi->stbc5glpo;
   tmp_bw40po = pi->bw405glpo;

   tx_srom_max_rate = pi->tx_srom_max_rate_5g_low;
   break;
  case 3:

   tmp_max_pwr = min(pi->nphy_pwrctrl_info[0].max_pwr_5gh,
       pi->nphy_pwrctrl_info[1].max_pwr_5gh);

   pwr_offsets1[0] = (u16) (pi->ofdm5ghpo & 0xffff);
   pwr_offsets1[1] =
    (u16) (pi->ofdm5ghpo >> 16) & 0xffff;

   pwr_offsets2 = pi->mcs5ghpo;

   tmp_cddpo = pi->cdd5ghpo;
   tmp_stbcpo = pi->stbc5ghpo;
   tmp_bw40po = pi->bw405ghpo;

   tx_srom_max_rate = pi->tx_srom_max_rate_5g_hi;
   break;
  }

  wlc_phy_txpwr_nphy_srom_convert(tx_srom_max_rate, pwr_offsets1,
      tmp_max_pwr, TXP_FIRST_OFDM,
      TXP_LAST_OFDM);

  wlc_phy_ofdm_to_mcs_powers_nphy(tx_srom_max_rate,
      TXP_FIRST_MCS_20_SISO,
      TXP_LAST_MCS_20_SISO,
      TXP_FIRST_OFDM);

  wlc_phy_txpwr_nphy_srom_convert(tx_srom_max_rate, pwr_offsets2,
      tmp_max_pwr,
      TXP_FIRST_MCS_20_CDD,
      TXP_LAST_MCS_20_CDD);

  if (NREV_GE(pi->pubpi.phy_rev, 3))
   wlc_phy_txpwr_nphy_po_apply(tx_srom_max_rate, tmp_cddpo,
          TXP_FIRST_MCS_20_CDD,
          TXP_LAST_MCS_20_CDD);

  wlc_phy_mcs_to_ofdm_powers_nphy(tx_srom_max_rate,
      TXP_FIRST_OFDM_20_CDD,
      TXP_LAST_OFDM_20_CDD,
      TXP_FIRST_MCS_20_CDD);

  wlc_phy_txpwr_nphy_srom_convert(tx_srom_max_rate, pwr_offsets2,
      tmp_max_pwr,
      TXP_FIRST_MCS_20_STBC,
      TXP_LAST_MCS_20_STBC);

  if (NREV_GE(pi->pubpi.phy_rev, 3))
   wlc_phy_txpwr_nphy_po_apply(tx_srom_max_rate,
          tmp_stbcpo,
          TXP_FIRST_MCS_20_STBC,
          TXP_LAST_MCS_20_STBC);

  wlc_phy_txpwr_nphy_srom_convert(tx_srom_max_rate,
      &pwr_offsets2[2], tmp_max_pwr,
      TXP_FIRST_MCS_20_SDM,
      TXP_LAST_MCS_20_SDM);

  if (NPHY_IS_SROM_REINTERPRET) {

   wlc_phy_txpwr_nphy_srom_convert(tx_srom_max_rate,
       &pwr_offsets2[4],
       tmp_max_pwr,
       TXP_FIRST_MCS_40_SISO,
       TXP_LAST_MCS_40_SISO);

   wlc_phy_mcs_to_ofdm_powers_nphy(tx_srom_max_rate,
       TXP_FIRST_OFDM_40_SISO,
       TXP_LAST_OFDM_40_SISO,
       TXP_FIRST_MCS_40_SISO);

   wlc_phy_txpwr_nphy_srom_convert(tx_srom_max_rate,
       &pwr_offsets2[4],
       tmp_max_pwr,
       TXP_FIRST_MCS_40_CDD,
       TXP_LAST_MCS_40_CDD);

   wlc_phy_txpwr_nphy_po_apply(tx_srom_max_rate, tmp_cddpo,
          TXP_FIRST_MCS_40_CDD,
          TXP_LAST_MCS_40_CDD);

   wlc_phy_mcs_to_ofdm_powers_nphy(tx_srom_max_rate,
       TXP_FIRST_OFDM_40_CDD,
       TXP_LAST_OFDM_40_CDD,
       TXP_FIRST_MCS_40_CDD);

   wlc_phy_txpwr_nphy_srom_convert(tx_srom_max_rate,
       &pwr_offsets2[4],
       tmp_max_pwr,
       TXP_FIRST_MCS_40_STBC,
       TXP_LAST_MCS_40_STBC);

   wlc_phy_txpwr_nphy_po_apply(tx_srom_max_rate,
          tmp_stbcpo,
          TXP_FIRST_MCS_40_STBC,
          TXP_LAST_MCS_40_STBC);

   wlc_phy_txpwr_nphy_srom_convert(tx_srom_max_rate,
       &pwr_offsets2[6],
       tmp_max_pwr,
       TXP_FIRST_MCS_40_SDM,
       TXP_LAST_MCS_40_SDM);
  } else {

   for (rate1 = TXP_FIRST_OFDM_40_SISO, rate2 =
         TXP_FIRST_OFDM;
        rate1 <= TXP_LAST_MCS_40_SDM;
        rate1++, rate2++)
    tx_srom_max_rate[rate1] =
     tx_srom_max_rate[rate2];
  }

  if (NREV_GE(pi->pubpi.phy_rev, 3))
   wlc_phy_txpwr_nphy_po_apply(tx_srom_max_rate,
          tmp_bw40po,
          TXP_FIRST_OFDM_40_SISO,
          TXP_LAST_MCS_40_SDM);

  tx_srom_max_rate[TXP_MCS_32] =
   tx_srom_max_rate[TXP_FIRST_MCS_40_CDD];
 }

 return;
}
