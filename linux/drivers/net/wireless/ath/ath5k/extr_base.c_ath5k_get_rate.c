
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ieee80211_tx_info {size_t band; } ;
struct ieee80211_rate {int dummy; } ;
struct ieee80211_hw {TYPE_2__* wiphy; } ;
struct ath5k_buf {TYPE_3__* rates; } ;
struct TYPE_6__ {size_t idx; } ;
struct TYPE_5__ {TYPE_1__** bands; } ;
struct TYPE_4__ {struct ieee80211_rate* bitrates; } ;



__attribute__((used)) static struct ieee80211_rate *
ath5k_get_rate(const struct ieee80211_hw *hw,
        const struct ieee80211_tx_info *info,
        struct ath5k_buf *bf, int idx)
{




 if (bf->rates[idx].idx < 0) {
  return ((void*)0);
 }

 return &hw->wiphy->bands[info->band]->bitrates[ bf->rates[idx].idx ];
}
