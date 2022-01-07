
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct modal_eep_header {int * rxTxMarginCh; int * bswAtten; int * bswMargin; int * xatten2Db; int * xatten2Margin; int * txRxAttenCh; } ;
struct ath_hw {int dummy; } ;
struct ar5416_eeprom_def {int dummy; } ;


 scalar_t__ AR5416_EEP_MINOR_VER_3 ;
 int AR9280_PHY_RXGAIN_TXRX_ATTEN ;
 int AR9280_PHY_RXGAIN_TXRX_MARGIN ;
 scalar_t__ AR_PHY_GAIN_2GHZ ;
 int AR_PHY_GAIN_2GHZ_BSW_ATTEN ;
 int AR_PHY_GAIN_2GHZ_BSW_MARGIN ;
 int AR_PHY_GAIN_2GHZ_RXTX_MARGIN ;
 int AR_PHY_GAIN_2GHZ_XATTEN1_DB ;
 int AR_PHY_GAIN_2GHZ_XATTEN1_MARGIN ;
 int AR_PHY_GAIN_2GHZ_XATTEN2_DB ;
 int AR_PHY_GAIN_2GHZ_XATTEN2_MARGIN ;
 scalar_t__ AR_PHY_RXGAIN ;
 int AR_PHY_RXGAIN_TXRX_ATTEN ;
 scalar_t__ AR_SREV_9280_20_OR_LATER (struct ath_hw*) ;
 int ENABLE_REG_RMW_BUFFER (struct ath_hw*) ;
 int REG_RMW (struct ath_hw*,scalar_t__,int ,int ) ;
 int REG_RMW_BUFFER_FLUSH (struct ath_hw*) ;
 int REG_RMW_FIELD (struct ath_hw*,scalar_t__,int ,int ) ;
 int SM (int ,int ) ;
 scalar_t__ ath9k_hw_def_get_eeprom_rev (struct ath_hw*) ;

__attribute__((used)) static void ath9k_hw_def_set_gain(struct ath_hw *ah,
      struct modal_eep_header *pModal,
      struct ar5416_eeprom_def *eep,
      u8 txRxAttenLocal, int regChainOffset, int i)
{
 ENABLE_REG_RMW_BUFFER(ah);
 if (ath9k_hw_def_get_eeprom_rev(ah) >= AR5416_EEP_MINOR_VER_3) {
  txRxAttenLocal = pModal->txRxAttenCh[i];

  if (AR_SREV_9280_20_OR_LATER(ah)) {
   REG_RMW_FIELD(ah, AR_PHY_GAIN_2GHZ + regChainOffset,
         AR_PHY_GAIN_2GHZ_XATTEN1_MARGIN,
         pModal->bswMargin[i]);
   REG_RMW_FIELD(ah, AR_PHY_GAIN_2GHZ + regChainOffset,
         AR_PHY_GAIN_2GHZ_XATTEN1_DB,
         pModal->bswAtten[i]);
   REG_RMW_FIELD(ah, AR_PHY_GAIN_2GHZ + regChainOffset,
         AR_PHY_GAIN_2GHZ_XATTEN2_MARGIN,
         pModal->xatten2Margin[i]);
   REG_RMW_FIELD(ah, AR_PHY_GAIN_2GHZ + regChainOffset,
         AR_PHY_GAIN_2GHZ_XATTEN2_DB,
         pModal->xatten2Db[i]);
  } else {
   REG_RMW(ah, AR_PHY_GAIN_2GHZ + regChainOffset,
    SM(pModal-> bswMargin[i], AR_PHY_GAIN_2GHZ_BSW_MARGIN),
    AR_PHY_GAIN_2GHZ_BSW_MARGIN);
   REG_RMW(ah, AR_PHY_GAIN_2GHZ + regChainOffset,
    SM(pModal->bswAtten[i], AR_PHY_GAIN_2GHZ_BSW_ATTEN),
    AR_PHY_GAIN_2GHZ_BSW_ATTEN);
  }
 }

 if (AR_SREV_9280_20_OR_LATER(ah)) {
  REG_RMW_FIELD(ah,
        AR_PHY_RXGAIN + regChainOffset,
        AR9280_PHY_RXGAIN_TXRX_ATTEN, txRxAttenLocal);
  REG_RMW_FIELD(ah,
        AR_PHY_RXGAIN + regChainOffset,
        AR9280_PHY_RXGAIN_TXRX_MARGIN, pModal->rxTxMarginCh[i]);
 } else {
  REG_RMW(ah, AR_PHY_RXGAIN + regChainOffset,
   SM(txRxAttenLocal, AR_PHY_RXGAIN_TXRX_ATTEN),
   AR_PHY_RXGAIN_TXRX_ATTEN);
  REG_RMW(ah, AR_PHY_GAIN_2GHZ + regChainOffset,
   SM(pModal->rxTxMarginCh[i], AR_PHY_GAIN_2GHZ_RXTX_MARGIN),
   AR_PHY_GAIN_2GHZ_RXTX_MARGIN);
 }
 REG_RMW_BUFFER_FLUSH(ah);
}
