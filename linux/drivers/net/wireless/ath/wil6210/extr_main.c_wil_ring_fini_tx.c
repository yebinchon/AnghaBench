
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wil_ring_tx_data {int dot1x_open; int lock; scalar_t__ enabled; int mid; } ;
struct wil_ring {int va; } ;
struct TYPE_2__ {int (* ring_fini_tx ) (struct wil6210_priv*,struct wil_ring*) ;} ;
struct wil6210_priv {TYPE_1__ txrx_ops; int napi_tx; int status; int mutex; struct wil_ring_tx_data* ring_tx_data; struct wil_ring* ring_tx; } ;


 int U8_MAX ;
 int lockdep_assert_held (int *) ;
 int napi_synchronize (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct wil6210_priv*,struct wil_ring*) ;
 scalar_t__ test_bit (int ,int ) ;
 int wil_dbg_misc (struct wil6210_priv*,char*,int) ;
 int wil_status_napi_en ;
 int wmb () ;

__attribute__((used)) static void wil_ring_fini_tx(struct wil6210_priv *wil, int id)
{
 struct wil_ring *ring = &wil->ring_tx[id];
 struct wil_ring_tx_data *txdata = &wil->ring_tx_data[id];

 lockdep_assert_held(&wil->mutex);

 if (!ring->va)
  return;

 wil_dbg_misc(wil, "vring_fini_tx: id=%d\n", id);

 spin_lock_bh(&txdata->lock);
 txdata->dot1x_open = 0;
 txdata->mid = U8_MAX;
 txdata->enabled = 0;
 spin_unlock_bh(&txdata->lock);






 wmb();

 if (test_bit(wil_status_napi_en, wil->status))
  napi_synchronize(&wil->napi_tx);

 wil->txrx_ops.ring_fini_tx(wil, ring);
}
