
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct napi_struct {int dummy; } ;
struct iwl_rxq_sync_notification {scalar_t__ payload; } ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm_internal_rxq_notif {scalar_t__ cookie; int type; scalar_t__ sync; scalar_t__ data; } ;
struct iwl_mvm {scalar_t__ queue_sync_cookie; int rx_sync_waitq; int queue_sync_counter; } ;





 int WARN_ONCE (int,char*,...) ;
 int atomic_dec_return (int *) ;
 int iwl_mvm_del_ba (struct iwl_mvm*,int,void*) ;
 int iwl_mvm_nssn_sync (struct iwl_mvm*,struct napi_struct*,int,void*) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;
 int wake_up (int *) ;

void iwl_mvm_rx_queue_notif(struct iwl_mvm *mvm, struct napi_struct *napi,
       struct iwl_rx_cmd_buffer *rxb, int queue)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_rxq_sync_notification *notif;
 struct iwl_mvm_internal_rxq_notif *internal_notif;

 notif = (void *)pkt->data;
 internal_notif = (void *)notif->payload;

 if (internal_notif->sync &&
     mvm->queue_sync_cookie != internal_notif->cookie) {
  WARN_ONCE(1, "Received expired RX queue sync message\n");
  return;
 }

 switch (internal_notif->type) {
 case 130:
  break;
 case 129:
  iwl_mvm_del_ba(mvm, queue, (void *)internal_notif->data);
  break;
 case 128:
  iwl_mvm_nssn_sync(mvm, napi, queue,
      (void *)internal_notif->data);
  break;
 default:
  WARN_ONCE(1, "Invalid identifier %d", internal_notif->type);
 }

 if (internal_notif->sync &&
     !atomic_dec_return(&mvm->queue_sync_counter))
  wake_up(&mvm->rx_sync_waitq);
}
