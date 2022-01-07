
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int assoc; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;





 int ieee80211_vif_type_p2p (struct ieee80211_vif*) ;

__attribute__((used)) static void iwl_mvm_p2p_standalone_iterator(void *_data, u8 *mac,
         struct ieee80211_vif *vif)
{
 bool *is_p2p_standalone = _data;

 switch (ieee80211_vif_type_p2p(vif)) {
 case 129:
 case 130:
  *is_p2p_standalone = 0;
  break;
 case 128:
  if (vif->bss_conf.assoc)
   *is_p2p_standalone = 0;
  break;

 default:
  break;
 }
}
