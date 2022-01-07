
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil_ring_tx_data {scalar_t__ mid; int enabled; } ;
struct wil_ring {int va; } ;
struct wil6210_vif {scalar_t__ mid; int net_queue_stopped; } ;
struct wil6210_priv {struct wil_ring* ring_tx; struct wil_ring_tx_data* ring_tx_data; int status; } ;


 int WIL6210_MAX_TX_RINGS ;
 scalar_t__ drop_if_ring_full ;
 int netif_tx_stop_all_queues (int ) ;
 int netif_tx_wake_all_queues (int ) ;
 scalar_t__ test_bit (int ,int ) ;
 scalar_t__ unlikely (int) ;
 int vif_to_ndev (struct wil6210_vif*) ;
 int wil_dbg_txrx (struct wil6210_priv*,char*,...) ;
 int wil_get_min_tx_ring_id (struct wil6210_priv*) ;
 scalar_t__ wil_ring_avail_high (struct wil_ring*) ;
 int wil_ring_avail_low (struct wil_ring*) ;
 int wil_status_suspended ;
 int wil_status_suspending ;

__attribute__((used)) static inline void __wil_update_net_queues(struct wil6210_priv *wil,
        struct wil6210_vif *vif,
        struct wil_ring *ring,
        bool check_stop)
{
 int i;
 int min_ring_id = wil_get_min_tx_ring_id(wil);

 if (unlikely(!vif))
  return;

 if (ring)
  wil_dbg_txrx(wil, "vring %d, mid %d, check_stop=%d, stopped=%d",
        (int)(ring - wil->ring_tx), vif->mid, check_stop,
        vif->net_queue_stopped);
 else
  wil_dbg_txrx(wil, "check_stop=%d, mid=%d, stopped=%d",
        check_stop, vif->mid, vif->net_queue_stopped);

 if (ring && drop_if_ring_full)

  return;

 if (check_stop == vif->net_queue_stopped)

  return;

 if (check_stop) {
  if (!ring || unlikely(wil_ring_avail_low(ring))) {

   netif_tx_stop_all_queues(vif_to_ndev(vif));
   vif->net_queue_stopped = 1;
   wil_dbg_txrx(wil, "netif_tx_stop called\n");
  }
  return;
 }


 if (test_bit(wil_status_suspending, wil->status) ||
     test_bit(wil_status_suspended, wil->status))
  return;


 for (i = min_ring_id; i < WIL6210_MAX_TX_RINGS; i++) {
  struct wil_ring *cur_ring = &wil->ring_tx[i];
  struct wil_ring_tx_data *txdata = &wil->ring_tx_data[i];

  if (txdata->mid != vif->mid || !cur_ring->va ||
      !txdata->enabled || cur_ring == ring)
   continue;

  if (wil_ring_avail_low(cur_ring)) {
   wil_dbg_txrx(wil, "ring %d full, can't wake\n",
         (int)(cur_ring - wil->ring_tx));
   return;
  }
 }

 if (!ring || wil_ring_avail_high(ring)) {

  wil_dbg_txrx(wil, "calling netif_tx_wake\n");
  netif_tx_wake_all_queues(vif_to_ndev(vif));
  vif->net_queue_stopped = 0;
 }
}
