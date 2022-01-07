
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int rxchainmask; } ;


 int AR_PHY_CAL_CHAINMASK ;
 int AR_PHY_RX_CHAINMASK ;
 int REG_WRITE (struct ath_hw*,int ,int) ;

__attribute__((used)) static void ar5008_restore_chainmask(struct ath_hw *ah)
{
 int rx_chainmask = ah->rxchainmask;

 if ((rx_chainmask == 0x5) || (rx_chainmask == 0x3)) {
  REG_WRITE(ah, AR_PHY_RX_CHAINMASK, rx_chainmask);
  REG_WRITE(ah, AR_PHY_CAL_CHAINMASK, rx_chainmask);
 }
}
