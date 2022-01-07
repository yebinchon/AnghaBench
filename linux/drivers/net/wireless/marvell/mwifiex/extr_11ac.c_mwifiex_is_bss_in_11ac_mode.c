
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwifiex_bssdescriptor {int bcn_vht_cap; struct ieee80211_vht_operation* bcn_vht_oper; } ;
struct TYPE_2__ {struct mwifiex_bssdescriptor bss_descriptor; } ;
struct mwifiex_private {TYPE_1__ curr_bss_params; } ;
struct ieee80211_vht_operation {scalar_t__ chan_width; } ;


 scalar_t__ IEEE80211_VHT_CHANWIDTH_USE_HT ;

bool mwifiex_is_bss_in_11ac_mode(struct mwifiex_private *priv)
{
 struct mwifiex_bssdescriptor *bss_desc;
 struct ieee80211_vht_operation *vht_oper;

 bss_desc = &priv->curr_bss_params.bss_descriptor;
 vht_oper = bss_desc->bcn_vht_oper;

 if (!bss_desc->bcn_vht_cap || !vht_oper)
  return 0;

 if (vht_oper->chan_width == IEEE80211_VHT_CHANWIDTH_USE_HT)
  return 0;

 return 1;
}
