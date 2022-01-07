
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_tx_queue {unsigned int ptr_mask; int * buffer; int * cb_page; int queue; struct ef4_nic* efx; } ;
struct ef4_nic {int txq_entries; int net_dev; } ;


 int EF4_BUG_ON_PARANOID (int) ;
 unsigned int EF4_MAX_DMAQ_SIZE ;
 int EF4_MIN_DMAQ_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ef4_nic_probe_tx (struct ef4_tx_queue*) ;
 unsigned int ef4_tx_cb_page_count (struct ef4_tx_queue*) ;
 void* kcalloc (unsigned int,int,int ) ;
 int kfree (int *) ;
 unsigned int max (int ,int ) ;
 int netif_dbg (struct ef4_nic*,int ,int ,char*,int ,int ,unsigned int) ;
 int probe ;
 int roundup_pow_of_two (int ) ;

int ef4_probe_tx_queue(struct ef4_tx_queue *tx_queue)
{
 struct ef4_nic *efx = tx_queue->efx;
 unsigned int entries;
 int rc;


 entries = max(roundup_pow_of_two(efx->txq_entries), EF4_MIN_DMAQ_SIZE);
 EF4_BUG_ON_PARANOID(entries > EF4_MAX_DMAQ_SIZE);
 tx_queue->ptr_mask = entries - 1;

 netif_dbg(efx, probe, efx->net_dev,
    "creating TX queue %d size %#x mask %#x\n",
    tx_queue->queue, efx->txq_entries, tx_queue->ptr_mask);


 tx_queue->buffer = kcalloc(entries, sizeof(*tx_queue->buffer),
       GFP_KERNEL);
 if (!tx_queue->buffer)
  return -ENOMEM;

 tx_queue->cb_page = kcalloc(ef4_tx_cb_page_count(tx_queue),
        sizeof(tx_queue->cb_page[0]), GFP_KERNEL);
 if (!tx_queue->cb_page) {
  rc = -ENOMEM;
  goto fail1;
 }


 rc = ef4_nic_probe_tx(tx_queue);
 if (rc)
  goto fail2;

 return 0;

fail2:
 kfree(tx_queue->cb_page);
 tx_queue->cb_page = ((void*)0);
fail1:
 kfree(tx_queue->buffer);
 tx_queue->buffer = ((void*)0);
 return rc;
}
