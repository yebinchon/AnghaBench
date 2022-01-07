
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct hwsim_vif_priv {scalar_t__ bcn_en; } ;



__attribute__((used)) static void mac80211_hwsim_bcn_en_iter(void *data, u8 *mac,
           struct ieee80211_vif *vif)
{
 unsigned int *count = data;
 struct hwsim_vif_priv *vp = (void *)vif->drv_priv;

 if (vp->bcn_en)
  (*count)++;
}
