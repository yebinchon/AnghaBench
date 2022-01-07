
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_mvm_vif {int cab_queue; } ;
struct iwl_mvm {int probe_queue; int p2p_dev_queue; } ;
struct TYPE_3__ {TYPE_2__* vif; } ;
struct ieee80211_tx_info {TYPE_1__ control; } ;
struct ieee80211_hdr {int addr1; int frame_control; } ;
typedef int __le16 ;
struct TYPE_4__ {int type; } ;





 int WARN_ONCE (int,char*,...) ;
 int WARN_ON_ONCE (int) ;
 int ieee80211_has_order (int ) ;
 int ieee80211_is_bufferable_mmpdu (int ) ;
 int ieee80211_is_deauth (int ) ;
 int ieee80211_is_disassoc (int ) ;
 int ieee80211_is_mgmt (int ) ;
 int ieee80211_is_probe_req (int ) ;
 int is_multicast_ether_addr (int ) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (TYPE_2__*) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int iwl_mvm_get_ctrl_vif_queue(struct iwl_mvm *mvm,
          struct ieee80211_tx_info *info,
          struct ieee80211_hdr *hdr)
{
 struct iwl_mvm_vif *mvmvif =
  iwl_mvm_vif_from_mac80211(info->control.vif);
 __le16 fc = hdr->frame_control;

 switch (info->control.vif->type) {
 case 129:
 case 130:
  if (ieee80211_is_mgmt(fc) &&
      (!ieee80211_is_bufferable_mmpdu(fc) ||
       ieee80211_is_deauth(fc) || ieee80211_is_disassoc(fc)))
   return mvm->probe_queue;

  if (!ieee80211_has_order(fc) && !ieee80211_is_probe_req(fc) &&
      is_multicast_ether_addr(hdr->addr1))
   return mvmvif->cab_queue;

  WARN_ONCE(info->control.vif->type != 130,
     "fc=0x%02x", le16_to_cpu(fc));
  return mvm->probe_queue;
 case 128:
  if (ieee80211_is_mgmt(fc))
   return mvm->p2p_dev_queue;

  WARN_ON_ONCE(1);
  return mvm->p2p_dev_queue;
 default:
  WARN_ONCE(1, "Not a ctrl vif, no available queue\n");
  return -1;
 }
}
