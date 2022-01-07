
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int macVersion; } ;
struct ath_hw {int rxchainmask; int txchainmask; TYPE_1__ hw_version; } ;


 int AR_PHY_ANALOG_SWAP ;
 int AR_PHY_CAL_CHAINMASK ;
 int AR_PHY_RX_CHAINMASK ;
 int AR_PHY_SWAP_ALT_CHAIN ;
 int AR_SELFGEN_MASK ;
 scalar_t__ AR_SREV_9100 (struct ath_hw*) ;
 int AR_SREV_REVISION_5416_10 ;
 int ENABLE_REGWRITE_BUFFER (struct ath_hw*) ;
 int REGWRITE_BUFFER_FLUSH (struct ath_hw*) ;
 int REG_READ (struct ath_hw*,int ) ;
 int REG_SET_BIT (struct ath_hw*,int ,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;

__attribute__((used)) static void ar5008_hw_init_chain_masks(struct ath_hw *ah)
{
 int rx_chainmask, tx_chainmask;

 rx_chainmask = ah->rxchainmask;
 tx_chainmask = ah->txchainmask;


 switch (rx_chainmask) {
 case 0x5:
  REG_SET_BIT(ah, AR_PHY_ANALOG_SWAP,
       AR_PHY_SWAP_ALT_CHAIN);

 case 0x3:
  if (ah->hw_version.macVersion == AR_SREV_REVISION_5416_10) {
   REG_WRITE(ah, AR_PHY_RX_CHAINMASK, 0x7);
   REG_WRITE(ah, AR_PHY_CAL_CHAINMASK, 0x7);
   break;
  }

 case 0x1:
 case 0x2:
 case 0x7:
  ENABLE_REGWRITE_BUFFER(ah);
  REG_WRITE(ah, AR_PHY_RX_CHAINMASK, rx_chainmask);
  REG_WRITE(ah, AR_PHY_CAL_CHAINMASK, rx_chainmask);
  break;
 default:
  ENABLE_REGWRITE_BUFFER(ah);
  break;
 }

 REG_WRITE(ah, AR_SELFGEN_MASK, tx_chainmask);

 REGWRITE_BUFFER_FLUSH(ah);

 if (tx_chainmask == 0x5) {
  REG_SET_BIT(ah, AR_PHY_ANALOG_SWAP,
       AR_PHY_SWAP_ALT_CHAIN);
 }
 if (AR_SREV_9100(ah))
  REG_WRITE(ah, AR_PHY_ANALOG_SWAP,
     REG_READ(ah, AR_PHY_ANALOG_SWAP) | 0x00000001);
}
