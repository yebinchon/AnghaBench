
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil_ring_tx_data {int lock; int enabled; } ;
struct wil_ring {int va; } ;
struct wil6210_priv {int napi_tx; int status; struct wil_ring_tx_data* ring_tx_data; struct wil_ring* ring_tx; } ;


 int WIL6210_MAX_TX_RINGS ;
 int WIL_DATA_COMPLETION_TO_MS ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int msleep (int) ;
 int napi_synchronize (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int wil_dbg_pm (struct wil6210_priv*,char*) ;
 int wil_dbg_ratelimited (struct wil6210_priv*,char*) ;
 int wil_get_min_tx_ring_id (struct wil6210_priv*) ;
 int wil_ring_is_empty (struct wil_ring*) ;
 int wil_status_napi_en ;

bool wil_is_tx_idle(struct wil6210_priv *wil)
{
 int i;
 unsigned long data_comp_to;
 int min_ring_id = wil_get_min_tx_ring_id(wil);

 for (i = min_ring_id; i < WIL6210_MAX_TX_RINGS; i++) {
  struct wil_ring *vring = &wil->ring_tx[i];
  int vring_index = vring - wil->ring_tx;
  struct wil_ring_tx_data *txdata =
   &wil->ring_tx_data[vring_index];

  spin_lock(&txdata->lock);

  if (!vring->va || !txdata->enabled) {
   spin_unlock(&txdata->lock);
   continue;
  }

  data_comp_to = jiffies + msecs_to_jiffies(
     WIL_DATA_COMPLETION_TO_MS);
  if (test_bit(wil_status_napi_en, wil->status)) {
   while (!wil_ring_is_empty(vring)) {
    if (time_after(jiffies, data_comp_to)) {
     wil_dbg_pm(wil,
         "TO waiting for idle tx\n");
     spin_unlock(&txdata->lock);
     return 0;
    }
    wil_dbg_ratelimited(wil,
          "tx vring is not empty -> NAPI\n");
    spin_unlock(&txdata->lock);
    napi_synchronize(&wil->napi_tx);
    msleep(20);
    spin_lock(&txdata->lock);
    if (!vring->va || !txdata->enabled)
     break;
   }
  }

  spin_unlock(&txdata->lock);
 }

 return 1;
}
