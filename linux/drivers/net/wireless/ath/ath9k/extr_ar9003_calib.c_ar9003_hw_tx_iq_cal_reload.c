
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int tx_corr_coeff ;
struct ath_hw {int txchainmask; struct ath9k_hw_cal_data* caldata; } ;
struct ath9k_hw_cal_data {int* num_measures; int** tx_corr_coeff; } ;


 int AR9300_MAX_CHAINS ;
 int AR_PHY_RX_IQCAL_CORR_B0 ;
 int AR_PHY_RX_IQCAL_CORR_B0_LOOPBACK_IQCORR_EN ;
 int AR_PHY_TX_IQCAL_CONTROL_3 ;
 int AR_PHY_TX_IQCAL_CONTROL_3_IQCORR_EN ;
 int AR_PHY_TX_IQCAL_CORR_COEFF_00_COEFF_TABLE ;
 int AR_PHY_TX_IQCAL_CORR_COEFF_01_COEFF_TABLE ;
 int AR_PHY_TX_IQCAL_CORR_COEFF_B0 (int) ;
 int AR_PHY_TX_IQCAL_CORR_COEFF_B1 (int) ;
 int AR_PHY_TX_IQCAL_CORR_COEFF_B2 (int) ;
 int AR_SREV_9485 (struct ath_hw*) ;
 int MAX_MEASUREMENT ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int) ;
 int memset (int **,int ,int) ;

__attribute__((used)) static void ar9003_hw_tx_iq_cal_reload(struct ath_hw *ah)
{
 struct ath9k_hw_cal_data *caldata = ah->caldata;
 u32 tx_corr_coeff[MAX_MEASUREMENT][AR9300_MAX_CHAINS];
 int i, im;

 memset(tx_corr_coeff, 0, sizeof(tx_corr_coeff));
 for (i = 0; i < MAX_MEASUREMENT / 2; i++) {
  tx_corr_coeff[i * 2][0] = tx_corr_coeff[(i * 2) + 1][0] =
     AR_PHY_TX_IQCAL_CORR_COEFF_B0(i);
  if (!AR_SREV_9485(ah)) {
   tx_corr_coeff[i * 2][1] =
   tx_corr_coeff[(i * 2) + 1][1] =
     AR_PHY_TX_IQCAL_CORR_COEFF_B1(i);

   tx_corr_coeff[i * 2][2] =
   tx_corr_coeff[(i * 2) + 1][2] =
     AR_PHY_TX_IQCAL_CORR_COEFF_B2(i);
  }
 }

 for (i = 0; i < AR9300_MAX_CHAINS; i++) {
  if (!(ah->txchainmask & (1 << i)))
   continue;

  for (im = 0; im < caldata->num_measures[i]; im++) {
   if ((im % 2) == 0)
    REG_RMW_FIELD(ah, tx_corr_coeff[im][i],
         AR_PHY_TX_IQCAL_CORR_COEFF_00_COEFF_TABLE,
         caldata->tx_corr_coeff[im][i]);
   else
    REG_RMW_FIELD(ah, tx_corr_coeff[im][i],
         AR_PHY_TX_IQCAL_CORR_COEFF_01_COEFF_TABLE,
         caldata->tx_corr_coeff[im][i]);
  }
 }

 REG_RMW_FIELD(ah, AR_PHY_TX_IQCAL_CONTROL_3,
        AR_PHY_TX_IQCAL_CONTROL_3_IQCORR_EN, 0x1);
 REG_RMW_FIELD(ah, AR_PHY_RX_IQCAL_CORR_B0,
        AR_PHY_RX_IQCAL_CORR_B0_LOOPBACK_IQCORR_EN, 0x1);
}
