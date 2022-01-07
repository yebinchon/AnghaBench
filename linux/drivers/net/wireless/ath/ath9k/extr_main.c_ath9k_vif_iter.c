
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int enable_beacon; int use_short_slot; } ;
struct ieee80211_vif {int type; TYPE_1__ bss_conf; scalar_t__ drv_priv; } ;
struct ath_vif {int assoc; } ;
struct ath9k_vif_iter_data {int has_hw_macaddr; int* mask; int* hw_macaddr; int slottime; int nwds; int nmeshes; int nadhocs; int nocbs; struct ieee80211_vif* primary_sta; int nstations; int naps; } ;


 int ETH_ALEN ;






 int ath9k_vif_iter_set_beacon (struct ath9k_vif_iter_data*,struct ieee80211_vif*) ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static void ath9k_vif_iter(struct ath9k_vif_iter_data *iter_data,
      u8 *mac, struct ieee80211_vif *vif)
{
 struct ath_vif *avp = (struct ath_vif *)vif->drv_priv;
 int i;

 if (iter_data->has_hw_macaddr) {
  for (i = 0; i < ETH_ALEN; i++)
   iter_data->mask[i] &=
    ~(iter_data->hw_macaddr[i] ^ mac[i]);
 } else {
  memcpy(iter_data->hw_macaddr, mac, ETH_ALEN);
  iter_data->has_hw_macaddr = 1;
 }

 if (!vif->bss_conf.use_short_slot)
  iter_data->slottime = 20;

 switch (vif->type) {
 case 132:
  iter_data->naps++;
  if (vif->bss_conf.enable_beacon)
   ath9k_vif_iter_set_beacon(iter_data, vif);
  break;
 case 129:
  iter_data->nstations++;
  if (avp->assoc && !iter_data->primary_sta)
   iter_data->primary_sta = vif;
  break;
 case 130:
  iter_data->nocbs++;
  break;
 case 133:
  iter_data->nadhocs++;
  if (vif->bss_conf.enable_beacon)
   ath9k_vif_iter_set_beacon(iter_data, vif);
  break;
 case 131:
  iter_data->nmeshes++;
  if (vif->bss_conf.enable_beacon)
   ath9k_vif_iter_set_beacon(iter_data, vif);
  break;
 case 128:
  iter_data->nwds++;
  break;
 default:
  break;
 }
}
