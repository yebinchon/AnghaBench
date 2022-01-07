
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_mvm {int dummy; } ;
struct iwl_lq_sta {int dummy; } ;
struct ieee80211_sta {int addr; } ;


 int EAGAIN ;
 int IWL_DEBUG_HT (struct iwl_mvm*,char*,int ,int ) ;
 int IWL_ERR (struct iwl_mvm*,char*,int ) ;
 int ieee80211_start_tx_ba_session (struct ieee80211_sta*,int ,int ) ;
 int ieee80211_stop_tx_ba_session (struct ieee80211_sta*,int ) ;

__attribute__((used)) static int rs_tl_turn_on_agg_for_tid(struct iwl_mvm *mvm,
         struct iwl_lq_sta *lq_data, u8 tid,
         struct ieee80211_sta *sta)
{
 int ret = -EAGAIN;

 IWL_DEBUG_HT(mvm, "Starting Tx agg: STA: %pM tid: %d\n",
       sta->addr, tid);


 ret = ieee80211_start_tx_ba_session(sta, tid, 0);
 if (ret == -EAGAIN) {





  IWL_ERR(mvm, "Fail start Tx agg on tid: %d\n",
   tid);
  ieee80211_stop_tx_ba_session(sta, tid);
 }
 return ret;
}
