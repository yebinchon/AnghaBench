
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wiphy {TYPE_3__** bands; } ;
struct ath6kl_vif {TYPE_1__* ar; } ;
struct TYPE_5__ {int ht_supported; } ;
struct TYPE_6__ {TYPE_2__ ht_cap; } ;
struct TYPE_4__ {struct wiphy* wiphy; } ;


 int NUM_NL80211_BANDS ;
 int ath6kl_set_htcap (struct ath6kl_vif*,int,int ) ;

__attribute__((used)) static int ath6kl_restore_htcap(struct ath6kl_vif *vif)
{
 struct wiphy *wiphy = vif->ar->wiphy;
 int band, ret = 0;

 for (band = 0; band < NUM_NL80211_BANDS; band++) {
  if (!wiphy->bands[band])
   continue;

  ret = ath6kl_set_htcap(vif, band,
    wiphy->bands[band]->ht_cap.ht_supported);
  if (ret)
   return ret;
 }

 return ret;
}
