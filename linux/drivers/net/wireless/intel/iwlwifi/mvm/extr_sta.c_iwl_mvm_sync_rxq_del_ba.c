
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int baid; } ;
struct TYPE_3__ {int sync; int type; } ;
struct iwl_mvm_rss_sync_notif {TYPE_2__ delba; TYPE_1__ metadata; } ;
struct iwl_mvm {int dummy; } ;
typedef int notif ;


 int IWL_MVM_RXQ_NOTIF_DEL_BA ;
 int iwl_mvm_sync_rx_queues_internal (struct iwl_mvm*,void*,int) ;

__attribute__((used)) static void iwl_mvm_sync_rxq_del_ba(struct iwl_mvm *mvm, u8 baid)
{
 struct iwl_mvm_rss_sync_notif notif = {
  .metadata.type = IWL_MVM_RXQ_NOTIF_DEL_BA,
  .metadata.sync = 1,
  .delba.baid = baid,
 };
 iwl_mvm_sync_rx_queues_internal(mvm, (void *)&notif, sizeof(notif));
}
