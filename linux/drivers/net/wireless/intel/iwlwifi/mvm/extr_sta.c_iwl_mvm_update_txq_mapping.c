
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct iwl_mvm_txq {int txq_id; } ;
struct iwl_mvm {TYPE_1__* queue_info; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_2__ {int tid_bitmap; size_t ra_sta_id; size_t txq_tid; int mac80211_ac; } ;


 int BIT (size_t) ;
 int IEEE80211_AC_VO ;
 int IWL_DEBUG_TX_QUEUES (struct iwl_mvm*,char*,int,int) ;
 int IWL_ERR (struct iwl_mvm*,char*,int,size_t) ;
 size_t IWL_MAX_TID_COUNT ;
 struct iwl_mvm_txq* iwl_mvm_txq_from_tid (struct ieee80211_sta*,size_t) ;
 int * tid_to_mac80211_ac ;

__attribute__((used)) static bool iwl_mvm_update_txq_mapping(struct iwl_mvm *mvm,
           struct ieee80211_sta *sta,
           int queue, u8 sta_id, u8 tid)
{
 bool enable_queue = 1;


 if (mvm->queue_info[queue].tid_bitmap & BIT(tid)) {
  IWL_ERR(mvm, "Trying to enable TXQ %d with existing TID %d\n",
   queue, tid);
  return 0;
 }


 if (mvm->queue_info[queue].tid_bitmap)
  enable_queue = 0;

 mvm->queue_info[queue].tid_bitmap |= BIT(tid);
 mvm->queue_info[queue].ra_sta_id = sta_id;

 if (enable_queue) {
  if (tid != IWL_MAX_TID_COUNT)
   mvm->queue_info[queue].mac80211_ac =
    tid_to_mac80211_ac[tid];
  else
   mvm->queue_info[queue].mac80211_ac = IEEE80211_AC_VO;

  mvm->queue_info[queue].txq_tid = tid;
 }

 if (sta) {
  struct iwl_mvm_txq *mvmtxq =
   iwl_mvm_txq_from_tid(sta, tid);

  mvmtxq->txq_id = queue;
 }

 IWL_DEBUG_TX_QUEUES(mvm,
       "Enabling TXQ #%d tids=0x%x\n",
       queue, mvm->queue_info[queue].tid_bitmap);

 return enable_queue;
}
