
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_tx_queue {int queue; int flush_outstanding; struct ef4_nic* efx; } ;
struct ef4_nic {int dummy; } ;
typedef int ef4_oword_t ;


 int EF4_POPULATE_OWORD_2 (int ,int ,int,int ,int ) ;
 int FRF_AZ_TX_FLUSH_DESCQ ;
 int FRF_AZ_TX_FLUSH_DESCQ_CMD ;
 int FR_AZ_TX_FLUSH_DESCQ ;
 int WARN_ON (int ) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int ef4_writeo (struct ef4_nic*,int *,int ) ;

__attribute__((used)) static void ef4_farch_flush_tx_queue(struct ef4_tx_queue *tx_queue)
{
 struct ef4_nic *efx = tx_queue->efx;
 ef4_oword_t tx_flush_descq;

 WARN_ON(atomic_read(&tx_queue->flush_outstanding));
 atomic_set(&tx_queue->flush_outstanding, 1);

 EF4_POPULATE_OWORD_2(tx_flush_descq,
        FRF_AZ_TX_FLUSH_DESCQ_CMD, 1,
        FRF_AZ_TX_FLUSH_DESCQ, tx_queue->queue);
 ef4_writeo(efx, &tx_flush_descq, FR_AZ_TX_FLUSH_DESCQ);
}
