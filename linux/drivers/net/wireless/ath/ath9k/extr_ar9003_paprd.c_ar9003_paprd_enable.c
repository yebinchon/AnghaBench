
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int tx_chainmask; } ;
struct TYPE_5__ {int papdRateMaskHt20; } ;
struct ar9300_eeprom {TYPE_2__ modalHeader5G; } ;
struct TYPE_4__ {struct ar9300_eeprom ar9300_eep; } ;
struct ath_hw {int paprd_table_write_done; TYPE_3__ caps; TYPE_1__ eeprom; struct ath9k_channel* curchan; } ;
struct ath9k_channel {scalar_t__ channel; } ;


 int AR_PHY_PAPRD_CTRL0_B0 ;
 int AR_PHY_PAPRD_CTRL0_B1 ;
 int AR_PHY_PAPRD_CTRL0_B2 ;
 int AR_PHY_PAPRD_CTRL0_PAPRD_ENABLE ;
 int BIT (int) ;
 scalar_t__ IS_CHAN_5GHZ (struct ath9k_channel*) ;
 scalar_t__ MID_5G_SUB_BAND_START ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int) ;
 scalar_t__ UPPER_5G_SUB_BAND_START ;
 int ath9k_hw_apply_txpower (struct ath_hw*,struct ath9k_channel*,int) ;
 int le32_to_cpu (int ) ;

void ar9003_paprd_enable(struct ath_hw *ah, bool val)
{
 struct ath9k_channel *chan = ah->curchan;
 struct ar9300_eeprom *eep = &ah->eeprom.ar9300_eep;
 if (IS_CHAN_5GHZ(chan)) {
  if (chan->channel >= UPPER_5G_SUB_BAND_START) {
   if (le32_to_cpu(eep->modalHeader5G.papdRateMaskHt20)
          & BIT(30))
    val = 0;
  } else if (chan->channel >= MID_5G_SUB_BAND_START) {
   if (le32_to_cpu(eep->modalHeader5G.papdRateMaskHt20)
          & BIT(29))
    val = 0;
  } else {
   if (le32_to_cpu(eep->modalHeader5G.papdRateMaskHt20)
          & BIT(28))
    val = 0;
  }
 }

 if (val) {
  ah->paprd_table_write_done = 1;
  ath9k_hw_apply_txpower(ah, chan, 0);
 }

 REG_RMW_FIELD(ah, AR_PHY_PAPRD_CTRL0_B0,
        AR_PHY_PAPRD_CTRL0_PAPRD_ENABLE, !!val);
 if (ah->caps.tx_chainmask & BIT(1))
  REG_RMW_FIELD(ah, AR_PHY_PAPRD_CTRL0_B1,
         AR_PHY_PAPRD_CTRL0_PAPRD_ENABLE, !!val);
 if (ah->caps.tx_chainmask & BIT(2))
  REG_RMW_FIELD(ah, AR_PHY_PAPRD_CTRL0_B2,
         AR_PHY_PAPRD_CTRL0_PAPRD_ENABLE, !!val);
}
