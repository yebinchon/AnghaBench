
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct iwl_mvm_internal_rxq_notif {scalar_t__ sync; int cookie; } ;
struct iwl_mvm {int queue_sync_cookie; int queue_sync_counter; int rx_sync_waitq; int mutex; TYPE_1__* trans; } ;
struct TYPE_2__ {int num_rx_queues; } ;


 scalar_t__ BIT (int ) ;
 int HZ ;
 int IWL_ERR (struct iwl_mvm*,char*,int) ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int iwl_mvm_has_new_rx_api (struct iwl_mvm*) ;
 scalar_t__ iwl_mvm_is_radio_killed (struct iwl_mvm*) ;
 int iwl_mvm_notify_rx_queue (struct iwl_mvm*,scalar_t__,int *,scalar_t__,int) ;
 int lockdep_assert_held (int *) ;
 int wait_event_timeout (int ,int,int ) ;

void iwl_mvm_sync_rx_queues_internal(struct iwl_mvm *mvm,
         struct iwl_mvm_internal_rxq_notif *notif,
         u32 size)
{
 u32 qmask = BIT(mvm->trans->num_rx_queues) - 1;
 int ret;


 if (!iwl_mvm_has_new_rx_api(mvm))
  return;

 if (notif->sync) {
  notif->cookie = mvm->queue_sync_cookie;
  atomic_set(&mvm->queue_sync_counter,
      mvm->trans->num_rx_queues);
 }

 ret = iwl_mvm_notify_rx_queue(mvm, qmask, (u8 *)notif,
          size, !notif->sync);
 if (ret) {
  IWL_ERR(mvm, "Failed to trigger RX queues sync (%d)\n", ret);
  goto out;
 }

 if (notif->sync) {
  lockdep_assert_held(&mvm->mutex);
  ret = wait_event_timeout(mvm->rx_sync_waitq,
      atomic_read(&mvm->queue_sync_counter) == 0 ||
      iwl_mvm_is_radio_killed(mvm),
      HZ);
  WARN_ON_ONCE(!ret && !iwl_mvm_is_radio_killed(mvm));
 }

out:
 atomic_set(&mvm->queue_sync_counter, 0);
 if (notif->sync)
  mvm->queue_sync_cookie++;
}
