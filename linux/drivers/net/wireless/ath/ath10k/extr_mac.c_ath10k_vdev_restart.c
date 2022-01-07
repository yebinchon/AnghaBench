
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfg80211_chan_def {int dummy; } ;
struct ath10k_vif {int dummy; } ;


 int ath10k_vdev_start_restart (struct ath10k_vif*,struct cfg80211_chan_def const*,int) ;

__attribute__((used)) static int ath10k_vdev_restart(struct ath10k_vif *arvif,
          const struct cfg80211_chan_def *def)
{
 return ath10k_vdev_start_restart(arvif, def, 1);
}
