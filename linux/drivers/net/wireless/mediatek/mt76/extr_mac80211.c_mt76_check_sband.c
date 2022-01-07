
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mt76_dev {TYPE_3__* hw; } ;
struct ieee80211_supported_band {int n_channels; TYPE_1__* channels; } ;
struct TYPE_6__ {TYPE_2__* wiphy; } ;
struct TYPE_5__ {struct ieee80211_supported_band** bands; } ;
struct TYPE_4__ {int flags; } ;


 int IEEE80211_CHAN_DISABLED ;

__attribute__((used)) static void
mt76_check_sband(struct mt76_dev *dev, int band)
{
 struct ieee80211_supported_band *sband = dev->hw->wiphy->bands[band];
 bool found = 0;
 int i;

 if (!sband)
  return;

 for (i = 0; i < sband->n_channels; i++) {
  if (sband->channels[i].flags & IEEE80211_CHAN_DISABLED)
   continue;

  found = 1;
  break;
 }

 if (found)
  return;

 sband->n_channels = 0;
 dev->hw->wiphy->bands[band] = ((void*)0);
}
