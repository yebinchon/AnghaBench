
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct sk_buff {scalar_t__ len; int data; } ;
struct iwl_mvm_vif {scalar_t__ id; } ;
struct iwl_mvm {int beacon_inject_active; int mutex; TYPE_2__* hw; TYPE_1__* fw; } ;
struct iwl_mac_beacon_cmd {int tim_size; int tim_idx; int template_id; void* byte_cnt; void* flags; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_tx_info {int dummy; } ;
typedef int beacon_cmd ;
struct TYPE_4__ {int extra_beacon_tailroom; } ;
struct TYPE_3__ {int ucode_capa; } ;


 int EINVAL ;
 int EIO ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 scalar_t__ IWL_FIRST_CCK_RATE ;
 int IWL_MAC_BEACON_CCK ;
 int IWL_UCODE_TLV_API_NEW_BEACON_TEMPLATE ;
 scalar_t__ NL80211_IFTYPE_AP ;
 int NUM_MAC_INDEX_DRIVER ;
 int U8_MAX ;
 void* cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int fw_has_api (int *,int ) ;
 scalar_t__ hex2bin (int ,char*,int) ;
 struct sk_buff* ieee80211_beacon_get_template (TYPE_2__*,struct ieee80211_vif*,int *) ;
 int iwl_mvm_firmware_running (struct iwl_mvm*) ;
 int iwl_mvm_has_new_tx_api (struct iwl_mvm*) ;
 int iwl_mvm_mac80211_idx_to_hwrate (scalar_t__) ;
 scalar_t__ iwl_mvm_mac_ctxt_get_lowest_rate (struct ieee80211_tx_info*,struct ieee80211_vif*) ;
 int iwl_mvm_mac_ctxt_send_beacon_cmd (struct iwl_mvm*,struct sk_buff*,struct iwl_mac_beacon_cmd*,int) ;
 int iwl_mvm_mac_ctxt_set_tim (struct iwl_mvm*,int *,int *,int ,scalar_t__) ;
 struct ieee80211_vif* iwl_mvm_rcu_dereference_vif_id (struct iwl_mvm*,int,int) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int skb_put_zero (struct sk_buff*,int) ;

__attribute__((used)) static int _iwl_dbgfs_inject_beacon_ie(struct iwl_mvm *mvm, char *bin, int len)
{
 struct ieee80211_vif *vif;
 struct iwl_mvm_vif *mvmvif;
 struct sk_buff *beacon;
 struct ieee80211_tx_info *info;
 struct iwl_mac_beacon_cmd beacon_cmd = {};
 u8 rate;
 u16 flags;
 int i;

 len /= 2;


 if (len >= U8_MAX)
  return -EINVAL;

 if (!iwl_mvm_firmware_running(mvm))
  return -EIO;

 if (!iwl_mvm_has_new_tx_api(mvm) &&
     !fw_has_api(&mvm->fw->ucode_capa,
   IWL_UCODE_TLV_API_NEW_BEACON_TEMPLATE))
  return -EINVAL;

 rcu_read_lock();

 for (i = 0; i < NUM_MAC_INDEX_DRIVER; i++) {
  vif = iwl_mvm_rcu_dereference_vif_id(mvm, i, 1);
  if (!vif)
   continue;

  if (vif->type == NL80211_IFTYPE_AP)
   break;
 }

 if (i == NUM_MAC_INDEX_DRIVER || !vif)
  goto out_err;

 mvm->hw->extra_beacon_tailroom = len;

 beacon = ieee80211_beacon_get_template(mvm->hw, vif, ((void*)0));
 if (!beacon)
  goto out_err;

 if (len && hex2bin(skb_put_zero(beacon, len), bin, len)) {
  dev_kfree_skb(beacon);
  goto out_err;
 }

 mvm->beacon_inject_active = 1;

 mvmvif = iwl_mvm_vif_from_mac80211(vif);
 info = IEEE80211_SKB_CB(beacon);
 rate = iwl_mvm_mac_ctxt_get_lowest_rate(info, vif);
 flags = iwl_mvm_mac80211_idx_to_hwrate(rate);

 if (rate == IWL_FIRST_CCK_RATE)
  flags |= IWL_MAC_BEACON_CCK;

 beacon_cmd.flags = cpu_to_le16(flags);
 beacon_cmd.byte_cnt = cpu_to_le16((u16)beacon->len);
 beacon_cmd.template_id = cpu_to_le32((u32)mvmvif->id);

 iwl_mvm_mac_ctxt_set_tim(mvm, &beacon_cmd.tim_idx,
     &beacon_cmd.tim_size,
     beacon->data, beacon->len);

 mutex_lock(&mvm->mutex);
 iwl_mvm_mac_ctxt_send_beacon_cmd(mvm, beacon, &beacon_cmd,
      sizeof(beacon_cmd));
 mutex_unlock(&mvm->mutex);

 dev_kfree_skb(beacon);

 rcu_read_unlock();
 return 0;

out_err:
 rcu_read_unlock();
 return -EINVAL;
}
