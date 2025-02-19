
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_rx_queue {unsigned int ptr_mask; int * buffer; struct ef4_nic* efx; } ;
struct ef4_nic {int rxq_entries; int net_dev; } ;


 int EF4_BUG_ON_PARANOID (int) ;
 unsigned int EF4_MAX_DMAQ_SIZE ;
 int EF4_MIN_DMAQ_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ef4_nic_probe_rx (struct ef4_rx_queue*) ;
 int ef4_rx_queue_index (struct ef4_rx_queue*) ;
 int * kcalloc (unsigned int,int,int ) ;
 int kfree (int *) ;
 unsigned int max (int ,int ) ;
 int netif_dbg (struct ef4_nic*,int ,int ,char*,int ,int ,unsigned int) ;
 int probe ;
 int roundup_pow_of_two (int ) ;

int ef4_probe_rx_queue(struct ef4_rx_queue *rx_queue)
{
 struct ef4_nic *efx = rx_queue->efx;
 unsigned int entries;
 int rc;


 entries = max(roundup_pow_of_two(efx->rxq_entries), EF4_MIN_DMAQ_SIZE);
 EF4_BUG_ON_PARANOID(entries > EF4_MAX_DMAQ_SIZE);
 rx_queue->ptr_mask = entries - 1;

 netif_dbg(efx, probe, efx->net_dev,
    "creating RX queue %d size %#x mask %#x\n",
    ef4_rx_queue_index(rx_queue), efx->rxq_entries,
    rx_queue->ptr_mask);


 rx_queue->buffer = kcalloc(entries, sizeof(*rx_queue->buffer),
       GFP_KERNEL);
 if (!rx_queue->buffer)
  return -ENOMEM;

 rc = ef4_nic_probe_rx(rx_queue);
 if (rc) {
  kfree(rx_queue->buffer);
  rx_queue->buffer = ((void*)0);
 }

 return rc;
}
