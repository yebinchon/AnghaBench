
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_rx_queue {unsigned int added_count; unsigned int removed_count; unsigned int fast_fill_trigger; unsigned int min_fill; unsigned int max_fill; scalar_t__ notified_count; struct ef4_nic* efx; int refill_enabled; } ;
struct ef4_nic {unsigned int rxq_entries; unsigned int rx_pages_per_batch; unsigned int rx_bufs_per_page; int net_dev; } ;


 int EF4_BUG_ON_PARANOID (int) ;
 int ef4_init_rx_buffers (struct ef4_rx_queue*,int) ;
 int ef4_nic_notify_rx_desc (struct ef4_rx_queue*) ;
 int ef4_rx_queue_index (struct ef4_rx_queue*) ;
 int ef4_schedule_slow_fill (struct ef4_rx_queue*) ;
 int netif_vdbg (struct ef4_nic*,int ,int ,char*,int ,scalar_t__,...) ;
 int rx_status ;
 scalar_t__ unlikely (int) ;

void ef4_fast_push_rx_descriptors(struct ef4_rx_queue *rx_queue, bool atomic)
{
 struct ef4_nic *efx = rx_queue->efx;
 unsigned int fill_level, batch_size;
 int space, rc = 0;

 if (!rx_queue->refill_enabled)
  return;


 fill_level = (rx_queue->added_count - rx_queue->removed_count);
 EF4_BUG_ON_PARANOID(fill_level > rx_queue->efx->rxq_entries);
 if (fill_level >= rx_queue->fast_fill_trigger)
  goto out;


 if (unlikely(fill_level < rx_queue->min_fill)) {
  if (fill_level)
   rx_queue->min_fill = fill_level;
 }

 batch_size = efx->rx_pages_per_batch * efx->rx_bufs_per_page;
 space = rx_queue->max_fill - fill_level;
 EF4_BUG_ON_PARANOID(space < batch_size);

 netif_vdbg(rx_queue->efx, rx_status, rx_queue->efx->net_dev,
     "RX queue %d fast-filling descriptor ring from"
     " level %d to level %d\n",
     ef4_rx_queue_index(rx_queue), fill_level,
     rx_queue->max_fill);


 do {
  rc = ef4_init_rx_buffers(rx_queue, atomic);
  if (unlikely(rc)) {

   if (rx_queue->added_count == rx_queue->removed_count)
    ef4_schedule_slow_fill(rx_queue);
   goto out;
  }
 } while ((space -= batch_size) >= batch_size);

 netif_vdbg(rx_queue->efx, rx_status, rx_queue->efx->net_dev,
     "RX queue %d fast-filled descriptor ring "
     "to level %d\n", ef4_rx_queue_index(rx_queue),
     rx_queue->added_count - rx_queue->removed_count);

 out:
 if (rx_queue->notified_count != rx_queue->added_count)
  ef4_nic_notify_rx_desc(rx_queue);
}
