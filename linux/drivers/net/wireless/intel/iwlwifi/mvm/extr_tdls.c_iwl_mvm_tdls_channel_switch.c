
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct iwl_mvm_sta {scalar_t__ sta_id; } ;
struct cfg80211_chan_def {int width; TYPE_1__* chan; } ;
struct TYPE_6__ {scalar_t__ sta_id; int ch_sw_tm_ie; int op_class; int initiator; struct cfg80211_chan_def chandef; int skb; } ;
struct TYPE_8__ {int dwork; TYPE_2__ peer; } ;
struct iwl_mvm {int mutex; TYPE_4__ tdls_cs; } ;
struct TYPE_7__ {int dtim_period; int beacon_int; } ;
struct ieee80211_vif {TYPE_3__ bss_conf; } ;
struct ieee80211_sta {int tdls_initiator; int addr; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_5__ {int center_freq; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IWL_DEBUG_TDLS (struct iwl_mvm*,char*,int ,...) ;
 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 scalar_t__ IWL_MVM_INVALID_STA ;
 int TDLS_SEND_CHAN_SW_REQ ;
 int TU_TO_MS (int) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;
 int iwl_mvm_tdls_config_channel_switch (struct iwl_mvm*,struct ieee80211_vif*,int ,int ,int ,int ,struct cfg80211_chan_def*,int ,int ,int ,struct sk_buff*,int ) ;
 int mod_delayed_work (int ,int *,int ) ;
 int msecs_to_jiffies (unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int skb_copy (struct sk_buff*,int ) ;
 int system_wq ;

int
iwl_mvm_tdls_channel_switch(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif,
       struct ieee80211_sta *sta, u8 oper_class,
       struct cfg80211_chan_def *chandef,
       struct sk_buff *tmpl_skb, u32 ch_sw_tm_ie)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 struct iwl_mvm_sta *mvmsta;
 unsigned int delay;
 int ret;

 mutex_lock(&mvm->mutex);

 IWL_DEBUG_TDLS(mvm, "TDLS channel switch with %pM ch %d width %d\n",
         sta->addr, chandef->chan->center_freq, chandef->width);


 if (mvm->tdls_cs.peer.sta_id != IWL_MVM_INVALID_STA) {
  IWL_DEBUG_TDLS(mvm,
          "Existing peer. Can't start switch with %pM\n",
          sta->addr);
  ret = -EBUSY;
  goto out;
 }

 ret = iwl_mvm_tdls_config_channel_switch(mvm, vif,
       TDLS_SEND_CHAN_SW_REQ,
       sta->addr, sta->tdls_initiator,
       oper_class, chandef, 0, 0, 0,
       tmpl_skb, ch_sw_tm_ie);
 if (ret)
  goto out;





 mvm->tdls_cs.peer.skb = skb_copy(tmpl_skb, GFP_KERNEL);
 if (!mvm->tdls_cs.peer.skb) {
  ret = -ENOMEM;
  goto out;
 }

 mvmsta = iwl_mvm_sta_from_mac80211(sta);
 mvm->tdls_cs.peer.sta_id = mvmsta->sta_id;
 mvm->tdls_cs.peer.chandef = *chandef;
 mvm->tdls_cs.peer.initiator = sta->tdls_initiator;
 mvm->tdls_cs.peer.op_class = oper_class;
 mvm->tdls_cs.peer.ch_sw_tm_ie = ch_sw_tm_ie;





 delay = 2 * TU_TO_MS(vif->bss_conf.dtim_period *
        vif->bss_conf.beacon_int);
 mod_delayed_work(system_wq, &mvm->tdls_cs.dwork,
    msecs_to_jiffies(delay));

out:
 mutex_unlock(&mvm->mutex);
 return ret;
}
