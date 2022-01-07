
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct iwl_mvm_sta {int vif; } ;
struct iwl_mvm_reorder_buffer {scalar_t__ consec_oldsn_ampdu_gp2; int consec_oldsn_prev_drop; scalar_t__ consec_oldsn_drops; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_sta {int addr; } ;


 int BIT (int) ;
 scalar_t__ IWL_MVM_AMPDU_CONSEC_DROPS_DELBA ;
 scalar_t__ IWL_RX_MPDU_REORDER_BA_OLD_SN ;
 int IWL_WARN (struct iwl_mvm*,char*,scalar_t__,int ,int,int) ;
 int ieee80211_stop_rx_ba_session (int ,int ,int ) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;

__attribute__((used)) static void iwl_mvm_oldsn_workaround(struct iwl_mvm *mvm,
         struct ieee80211_sta *sta, int tid,
         struct iwl_mvm_reorder_buffer *buffer,
         u32 reorder, u32 gp2, int queue)
{
 struct iwl_mvm_sta *mvmsta = iwl_mvm_sta_from_mac80211(sta);

 if (gp2 != buffer->consec_oldsn_ampdu_gp2) {






  if (!buffer->consec_oldsn_prev_drop)
   buffer->consec_oldsn_drops = 0;


  buffer->consec_oldsn_ampdu_gp2 = gp2;
 } else if (buffer->consec_oldsn_prev_drop) {






  return;
 }


 if (!(reorder & IWL_RX_MPDU_REORDER_BA_OLD_SN))
  return;


 buffer->consec_oldsn_prev_drop = 1;
 buffer->consec_oldsn_drops++;


 if (buffer->consec_oldsn_drops == IWL_MVM_AMPDU_CONSEC_DROPS_DELBA) {
  IWL_WARN(mvm,
    "reached %d old SN frames from %pM on queue %d, stopping BA session on TID %d\n",
    IWL_MVM_AMPDU_CONSEC_DROPS_DELBA,
    sta->addr, queue, tid);
  ieee80211_stop_rx_ba_session(mvmsta->vif, BIT(tid), sta->addr);
  buffer->consec_oldsn_prev_drop = 0;
  buffer->consec_oldsn_drops = 0;
 }
}
