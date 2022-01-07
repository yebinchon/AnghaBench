
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int hw_caps; } ;
struct ath_hw {TYPE_2__ caps; } ;
struct ath_common {TYPE_1__* sbands; } ;
struct TYPE_3__ {int ht_cap; } ;


 int ATH9K_HW_CAP_2GHZ ;
 int ATH9K_HW_CAP_5GHZ ;
 int ATH9K_HW_CAP_HT ;
 size_t NL80211_BAND_2GHZ ;
 size_t NL80211_BAND_5GHZ ;
 int ath9k_cmn_setup_ht_cap (struct ath_hw*,int *) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;

void ath9k_cmn_reload_chainmask(struct ath_hw *ah)
{
 struct ath_common *common = ath9k_hw_common(ah);

 if (!(ah->caps.hw_caps & ATH9K_HW_CAP_HT))
  return;

 if (ah->caps.hw_caps & ATH9K_HW_CAP_2GHZ)
  ath9k_cmn_setup_ht_cap(ah,
   &common->sbands[NL80211_BAND_2GHZ].ht_cap);
 if (ah->caps.hw_caps & ATH9K_HW_CAP_5GHZ)
  ath9k_cmn_setup_ht_cap(ah,
   &common->sbands[NL80211_BAND_5GHZ].ht_cap);
}
