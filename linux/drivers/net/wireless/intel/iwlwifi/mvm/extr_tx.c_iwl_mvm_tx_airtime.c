
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int airtime; } ;
struct iwl_mvm_tcm_mac {TYPE_1__ tx; } ;
struct iwl_mvm_sta {int mac_id_n_color; } ;
struct TYPE_4__ {int work; scalar_t__ ts; scalar_t__ paused; struct iwl_mvm_tcm_mac* data; } ;
struct iwl_mvm {TYPE_2__ tcm; } ;


 int FW_CTXT_ID_MSK ;
 scalar_t__ MVM_TCM_PERIOD ;
 int NUM_MAC_INDEX_DRIVER ;
 int jiffies ;
 int schedule_delayed_work (int *,int ) ;
 scalar_t__ time_after (int ,scalar_t__) ;

__attribute__((used)) static void iwl_mvm_tx_airtime(struct iwl_mvm *mvm,
          struct iwl_mvm_sta *mvmsta,
          int airtime)
{
 int mac = mvmsta->mac_id_n_color & FW_CTXT_ID_MSK;
 struct iwl_mvm_tcm_mac *mdata;

 if (mac >= NUM_MAC_INDEX_DRIVER)
  return;

 mdata = &mvm->tcm.data[mac];

 if (mvm->tcm.paused)
  return;

 if (time_after(jiffies, mvm->tcm.ts + MVM_TCM_PERIOD))
  schedule_delayed_work(&mvm->tcm.work, 0);

 mdata->tx.airtime += airtime;
}
