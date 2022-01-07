
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_4__ {int * pkts; } ;
struct iwl_mvm_tcm_mac {TYPE_2__ tx; } ;
struct iwl_mvm_sta {int mac_id_n_color; } ;
struct TYPE_3__ {struct iwl_mvm_tcm_mac* data; } ;
struct iwl_mvm {TYPE_1__ tcm; } ;


 int EINVAL ;
 int FW_CTXT_ID_MSK ;
 int NUM_MAC_INDEX_DRIVER ;
 size_t* tid_to_mac80211_ac ;

__attribute__((used)) static int iwl_mvm_tx_pkt_queued(struct iwl_mvm *mvm,
     struct iwl_mvm_sta *mvmsta, int tid)
{
 u32 ac = tid_to_mac80211_ac[tid];
 int mac = mvmsta->mac_id_n_color & FW_CTXT_ID_MSK;
 struct iwl_mvm_tcm_mac *mdata;

 if (mac >= NUM_MAC_INDEX_DRIVER)
  return -EINVAL;

 mdata = &mvm->tcm.data[mac];

 mdata->tx.pkts[ac]++;

 return 0;
}
