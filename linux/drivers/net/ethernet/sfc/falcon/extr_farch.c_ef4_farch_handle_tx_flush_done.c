
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_tx_queue {int channel; int flush_outstanding; } ;
struct ef4_nic {int n_tx_channels; } ;
typedef int ef4_qword_t ;


 int EF4_CHANNEL_MAGIC_TX_DRAIN (struct ef4_tx_queue*) ;
 int EF4_QWORD_FIELD (int ,int ) ;
 int EF4_TXQ_TYPES ;
 int FSF_AZ_DRIVER_EV_SUBDATA ;
 scalar_t__ atomic_cmpxchg (int *,int,int ) ;
 int ef4_farch_magic_event (int ,int ) ;
 struct ef4_tx_queue* ef4_get_tx_queue (struct ef4_nic*,int,int) ;

__attribute__((used)) static void
ef4_farch_handle_tx_flush_done(struct ef4_nic *efx, ef4_qword_t *event)
{
 struct ef4_tx_queue *tx_queue;
 int qid;

 qid = EF4_QWORD_FIELD(*event, FSF_AZ_DRIVER_EV_SUBDATA);
 if (qid < EF4_TXQ_TYPES * efx->n_tx_channels) {
  tx_queue = ef4_get_tx_queue(efx, qid / EF4_TXQ_TYPES,
         qid % EF4_TXQ_TYPES);
  if (atomic_cmpxchg(&tx_queue->flush_outstanding, 1, 0)) {
   ef4_farch_magic_event(tx_queue->channel,
           EF4_CHANNEL_MAGIC_TX_DRAIN(tx_queue));
  }
 }
}
