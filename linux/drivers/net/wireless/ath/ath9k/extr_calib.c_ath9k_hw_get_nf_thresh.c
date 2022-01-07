
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hw {TYPE_1__* eep_ops; } ;
typedef int int8_t ;
typedef int int16_t ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_2__ {int (* get_eeprom ) (struct ath_hw*,int ) ;} ;


 int BUG_ON (int) ;
 int EEP_NFTHRESH_2 ;
 int EEP_NFTHRESH_5 ;


 int stub1 (struct ath_hw*,int ) ;
 int stub2 (struct ath_hw*,int ) ;

__attribute__((used)) static bool ath9k_hw_get_nf_thresh(struct ath_hw *ah,
       enum nl80211_band band,
       int16_t *nft)
{
 switch (band) {
 case 128:
  *nft = (int8_t)ah->eep_ops->get_eeprom(ah, EEP_NFTHRESH_5);
  break;
 case 129:
  *nft = (int8_t)ah->eep_ops->get_eeprom(ah, EEP_NFTHRESH_2);
  break;
 default:
  BUG_ON(1);
  return 0;
 }

 return 1;
}
