
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_8__ {int max; } ;
struct TYPE_7__ {int max; } ;
struct ath_hw {TYPE_4__ nf_5g; TYPE_3__ nf_2g; TYPE_2__* eep_ops; } ;
struct ath_common {TYPE_1__* bus_ops; } ;
struct TYPE_6__ {int (* get_eeprom ) (struct ath_hw*,int ) ;int (* get_eeprom_rev ) (struct ath_hw*) ;int (* get_eeprom_ver ) (struct ath_hw*) ;} ;
struct TYPE_5__ {scalar_t__ ath_bus_type; } ;


 int AR_PHY_CCA_MAX_GOOD_VAL_9300_FCC_2GHZ ;
 int AR_PHY_CCA_MAX_GOOD_VAL_9300_FCC_5GHZ ;
 scalar_t__ AR_SREV_9300_20_OR_LATER (struct ath_hw*) ;
 scalar_t__ ATH_USB ;
 int CONFIG ;
 int CTL_FCC ;
 int EEP_REG_0 ;
 int ENODEV ;
 int ar9002_hw_rf_claim (struct ath_hw*) ;
 int ath9k_hw_ani_init (struct ath_hw*) ;
 int ath9k_hw_chip_test (struct ath_hw*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_eeprom_init (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*,int ,int ) ;
 int stub1 (struct ath_hw*) ;
 int stub2 (struct ath_hw*) ;
 int stub3 (struct ath_hw*,int ) ;

__attribute__((used)) static int ath9k_hw_post_init(struct ath_hw *ah)
{
 struct ath_common *common = ath9k_hw_common(ah);
 int ecode;

 if (common->bus_ops->ath_bus_type != ATH_USB) {
  if (!ath9k_hw_chip_test(ah))
   return -ENODEV;
 }

 if (!AR_SREV_9300_20_OR_LATER(ah)) {
  ecode = ar9002_hw_rf_claim(ah);
  if (ecode != 0)
   return ecode;
 }

 ecode = ath9k_hw_eeprom_init(ah);
 if (ecode != 0)
  return ecode;

 ath_dbg(ath9k_hw_common(ah), CONFIG, "Eeprom VER: %d, REV: %d\n",
  ah->eep_ops->get_eeprom_ver(ah),
  ah->eep_ops->get_eeprom_rev(ah));

 ath9k_hw_ani_init(ah);





 if (AR_SREV_9300_20_OR_LATER(ah)) {
  u16 regdmn = ah->eep_ops->get_eeprom(ah, EEP_REG_0);
  if ((regdmn & 0xF0) == CTL_FCC) {
   ah->nf_2g.max = AR_PHY_CCA_MAX_GOOD_VAL_9300_FCC_2GHZ;
   ah->nf_5g.max = AR_PHY_CCA_MAX_GOOD_VAL_9300_FCC_5GHZ;
  }
 }

 return 0;
}
