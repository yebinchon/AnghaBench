
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_rx_queue {int flush_pending; } ;
struct ef4_nic {int n_channels; int flush_wq; int rxq_flush_outstanding; int rxq_flush_pending; int net_dev; } ;
struct ef4_channel {int dummy; } ;
typedef int ef4_qword_t ;


 int EF4_CHANNEL_MAGIC_RX_DRAIN (struct ef4_rx_queue*) ;
 int EF4_QWORD_FIELD (int ,int ) ;
 int FSF_AZ_DRIVER_EV_RX_DESCQ_ID ;
 int FSF_AZ_DRIVER_EV_RX_FLUSH_FAIL ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 struct ef4_rx_queue* ef4_channel_get_rx_queue (struct ef4_channel*) ;
 int ef4_channel_has_rx_queue (struct ef4_channel*) ;
 scalar_t__ ef4_farch_flush_wake (struct ef4_nic*) ;
 int ef4_farch_magic_event (int ,int ) ;
 struct ef4_channel* ef4_get_channel (struct ef4_nic*,int) ;
 int ef4_rx_queue_channel (struct ef4_rx_queue*) ;
 int hw ;
 int netif_info (struct ef4_nic*,int ,int ,char*,int) ;
 int wake_up (int *) ;

__attribute__((used)) static void
ef4_farch_handle_rx_flush_done(struct ef4_nic *efx, ef4_qword_t *event)
{
 struct ef4_channel *channel;
 struct ef4_rx_queue *rx_queue;
 int qid;
 bool failed;

 qid = EF4_QWORD_FIELD(*event, FSF_AZ_DRIVER_EV_RX_DESCQ_ID);
 failed = EF4_QWORD_FIELD(*event, FSF_AZ_DRIVER_EV_RX_FLUSH_FAIL);
 if (qid >= efx->n_channels)
  return;
 channel = ef4_get_channel(efx, qid);
 if (!ef4_channel_has_rx_queue(channel))
  return;
 rx_queue = ef4_channel_get_rx_queue(channel);

 if (failed) {
  netif_info(efx, hw, efx->net_dev,
      "RXQ %d flush retry\n", qid);
  rx_queue->flush_pending = 1;
  atomic_inc(&efx->rxq_flush_pending);
 } else {
  ef4_farch_magic_event(ef4_rx_queue_channel(rx_queue),
          EF4_CHANNEL_MAGIC_RX_DRAIN(rx_queue));
 }
 atomic_dec(&efx->rxq_flush_outstanding);
 if (ef4_farch_flush_wake(efx))
  wake_up(&efx->flush_wq);
}
