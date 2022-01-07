
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct iwl_mvm_tid_data {int next_reclaimed; int seq_number; } ;
struct iwl_mvm {TYPE_2__* trans; } ;
struct TYPE_4__ {TYPE_1__* trans_cfg; } ;
struct TYPE_3__ {scalar_t__ gen2; } ;


 int IEEE80211_SEQ_TO_SN (int ) ;
 int ieee80211_sn_sub (int,int ) ;

u16 iwl_mvm_tid_queued(struct iwl_mvm *mvm, struct iwl_mvm_tid_data *tid_data)
{
 u16 sn = IEEE80211_SEQ_TO_SN(tid_data->seq_number);





 if (mvm->trans->trans_cfg->gen2)
  sn &= 0xff;

 return ieee80211_sn_sub(sn, tid_data->next_reclaimed);
}
