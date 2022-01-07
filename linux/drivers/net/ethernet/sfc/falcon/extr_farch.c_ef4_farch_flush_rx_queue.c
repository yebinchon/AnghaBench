
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_rx_queue {struct ef4_nic* efx; } ;
struct ef4_nic {int dummy; } ;
typedef int ef4_oword_t ;


 int EF4_POPULATE_OWORD_2 (int ,int ,int,int ,int ) ;
 int FRF_AZ_RX_FLUSH_DESCQ ;
 int FRF_AZ_RX_FLUSH_DESCQ_CMD ;
 int FR_AZ_RX_FLUSH_DESCQ ;
 int ef4_rx_queue_index (struct ef4_rx_queue*) ;
 int ef4_writeo (struct ef4_nic*,int *,int ) ;

__attribute__((used)) static void ef4_farch_flush_rx_queue(struct ef4_rx_queue *rx_queue)
{
 struct ef4_nic *efx = rx_queue->efx;
 ef4_oword_t rx_flush_descq;

 EF4_POPULATE_OWORD_2(rx_flush_descq,
        FRF_AZ_RX_FLUSH_DESCQ_CMD, 1,
        FRF_AZ_RX_FLUSH_DESCQ,
        ef4_rx_queue_index(rx_queue));
 ef4_writeo(efx, &rx_flush_descq, FR_AZ_RX_FLUSH_DESCQ);
}
