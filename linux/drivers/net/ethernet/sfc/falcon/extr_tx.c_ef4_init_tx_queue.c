
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_tx_queue {int empty_read_count; int xmit_more_available; int tx_min_size; int initialised; scalar_t__ old_read_count; scalar_t__ read_count; scalar_t__ old_write_count; scalar_t__ write_count; scalar_t__ insert_count; int queue; struct ef4_nic* efx; } ;
struct ef4_nic {int net_dev; } ;


 int EF4_EMPTY_COUNT_VALID ;
 scalar_t__ EF4_WORKAROUND_15592 (struct ef4_nic*) ;
 int drv ;
 int ef4_nic_init_tx (struct ef4_tx_queue*) ;
 int netif_dbg (struct ef4_nic*,int ,int ,char*,int ) ;

void ef4_init_tx_queue(struct ef4_tx_queue *tx_queue)
{
 struct ef4_nic *efx = tx_queue->efx;

 netif_dbg(efx, drv, efx->net_dev,
    "initialising TX queue %d\n", tx_queue->queue);

 tx_queue->insert_count = 0;
 tx_queue->write_count = 0;
 tx_queue->old_write_count = 0;
 tx_queue->read_count = 0;
 tx_queue->old_read_count = 0;
 tx_queue->empty_read_count = 0 | EF4_EMPTY_COUNT_VALID;
 tx_queue->xmit_more_available = 0;


 tx_queue->tx_min_size = EF4_WORKAROUND_15592(efx) ? 33 : 0;


 ef4_nic_init_tx(tx_queue);

 tx_queue->initialised = 1;
}
