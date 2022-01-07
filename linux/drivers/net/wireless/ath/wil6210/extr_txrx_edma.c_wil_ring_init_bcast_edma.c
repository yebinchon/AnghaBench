
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil_ring_tx_data {int dot1x_open; int lock; scalar_t__ enabled; } ;
struct wil_ring {int size; int is_rx; } ;
struct wil6210_vif {int privacy; } ;
struct wil6210_priv {scalar_t__** ring2cid_tid; int mutex; int tx_sring_idx; struct wil_ring_tx_data* ring_tx_data; struct wil_ring* ring_tx; } ;


 scalar_t__ WIL6210_MAX_CID ;
 int lockdep_assert_held (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct wil6210_priv* vif_to_wil (struct wil6210_vif*) ;
 int wil_dbg_misc (struct wil6210_priv*,char*,int,int ) ;
 int wil_ring_alloc_desc_ring (struct wil6210_priv*,struct wil_ring*) ;
 int wil_ring_free_edma (struct wil6210_priv*,struct wil_ring*) ;
 int wil_tx_data_init (struct wil_ring_tx_data*) ;
 int wil_wmi_bcast_desc_ring_add (struct wil6210_vif*,int) ;

__attribute__((used)) static int wil_ring_init_bcast_edma(struct wil6210_vif *vif, int ring_id,
        int size)
{
 struct wil6210_priv *wil = vif_to_wil(vif);
 struct wil_ring *ring = &wil->ring_tx[ring_id];
 int rc;
 struct wil_ring_tx_data *txdata = &wil->ring_tx_data[ring_id];

 wil_dbg_misc(wil, "init bcast: ring_id=%d, sring_id=%d\n",
       ring_id, wil->tx_sring_idx);

 lockdep_assert_held(&wil->mutex);

 wil_tx_data_init(txdata);
 ring->size = size;
 ring->is_rx = 0;
 rc = wil_ring_alloc_desc_ring(wil, ring);
 if (rc)
  goto out;

 wil->ring2cid_tid[ring_id][0] = WIL6210_MAX_CID;
 wil->ring2cid_tid[ring_id][1] = 0;
 if (!vif->privacy)
  txdata->dot1x_open = 1;

 rc = wil_wmi_bcast_desc_ring_add(vif, ring_id);
 if (rc)
  goto out_free;

 return 0;

 out_free:
 spin_lock_bh(&txdata->lock);
 txdata->enabled = 0;
 txdata->dot1x_open = 0;
 spin_unlock_bh(&txdata->lock);
 wil_ring_free_edma(wil, ring);

out:
 return rc;
}
