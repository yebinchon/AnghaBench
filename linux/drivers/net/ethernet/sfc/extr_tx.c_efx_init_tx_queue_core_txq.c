
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_tx_queue {int queue; int core_txq; struct efx_nic* efx; } ;
struct efx_nic {int n_tx_channels; int net_dev; } ;


 int EFX_TXQ_TYPES ;
 int EFX_TXQ_TYPE_HIGHPRI ;
 int netdev_get_tx_queue (int ,int) ;

void efx_init_tx_queue_core_txq(struct efx_tx_queue *tx_queue)
{
 struct efx_nic *efx = tx_queue->efx;


 tx_queue->core_txq =
  netdev_get_tx_queue(efx->net_dev,
        tx_queue->queue / EFX_TXQ_TYPES +
        ((tx_queue->queue & EFX_TXQ_TYPE_HIGHPRI) ?
         efx->n_tx_channels : 0));
}
