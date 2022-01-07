
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct iwl_mvm_vif {scalar_t__ tsf_id; } ;
struct iwl_mvm_mac_iface_iterator_data {scalar_t__ preferred_tsf; int available_tsf_ids; struct ieee80211_vif* vif; } ;
struct TYPE_2__ {int beacon_int; } ;
struct ieee80211_vif {int type; TYPE_1__ bss_conf; } ;




 scalar_t__ NUM_TSF_IDS ;
 int __clear_bit (scalar_t__,int ) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int min (int,int) ;
 int test_bit (scalar_t__,int ) ;

__attribute__((used)) static void iwl_mvm_mac_tsf_id_iter(void *_data, u8 *mac,
        struct ieee80211_vif *vif)
{
 struct iwl_mvm_mac_iface_iterator_data *data = _data;
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 u16 min_bi;


 if (vif == data->vif)
  return;
 switch (data->vif->type) {
 case 128:
  if (vif->type != 129 ||
      data->preferred_tsf != NUM_TSF_IDS ||
      !test_bit(mvmvif->tsf_id, data->available_tsf_ids))
   break;

  min_bi = min(data->vif->bss_conf.beacon_int,
        vif->bss_conf.beacon_int);

  if (!min_bi)
   break;

  if ((data->vif->bss_conf.beacon_int -
       vif->bss_conf.beacon_int) % min_bi == 0) {
   data->preferred_tsf = mvmvif->tsf_id;
   return;
  }
  break;

 case 129:
  if ((vif->type != 129 &&
       vif->type != 128) ||
      data->preferred_tsf != NUM_TSF_IDS ||
      !test_bit(mvmvif->tsf_id, data->available_tsf_ids))
   break;

  min_bi = min(data->vif->bss_conf.beacon_int,
        vif->bss_conf.beacon_int);

  if (!min_bi)
   break;

  if ((data->vif->bss_conf.beacon_int -
       vif->bss_conf.beacon_int) % min_bi == 0) {
   data->preferred_tsf = mvmvif->tsf_id;
   return;
  }
  break;
 default:







  break;
 }







 __clear_bit(mvmvif->tsf_id, data->available_tsf_ids);

 if (data->preferred_tsf == mvmvif->tsf_id)
  data->preferred_tsf = NUM_TSF_IDS;
}
