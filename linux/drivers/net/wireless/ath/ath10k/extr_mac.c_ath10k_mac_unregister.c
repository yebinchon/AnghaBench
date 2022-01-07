
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* sbands; } ;
struct ath10k {int hw; TYPE_1__ mac; TYPE_3__* dfs_detector; } ;
struct TYPE_6__ {int (* exit ) (TYPE_3__*) ;} ;
struct TYPE_5__ {int channels; } ;


 int CONFIG_ATH10K_DFS_CERTIFIED ;
 scalar_t__ IS_ENABLED (int ) ;
 size_t NL80211_BAND_2GHZ ;
 size_t NL80211_BAND_5GHZ ;
 int SET_IEEE80211_DEV (int ,int *) ;
 int ieee80211_unregister_hw (int ) ;
 int kfree (int ) ;
 int stub1 (TYPE_3__*) ;

void ath10k_mac_unregister(struct ath10k *ar)
{
 ieee80211_unregister_hw(ar->hw);

 if (IS_ENABLED(CONFIG_ATH10K_DFS_CERTIFIED) && ar->dfs_detector)
  ar->dfs_detector->exit(ar->dfs_detector);

 kfree(ar->mac.sbands[NL80211_BAND_2GHZ].channels);
 kfree(ar->mac.sbands[NL80211_BAND_5GHZ].channels);

 SET_IEEE80211_DEV(ar->hw, ((void*)0));
}
