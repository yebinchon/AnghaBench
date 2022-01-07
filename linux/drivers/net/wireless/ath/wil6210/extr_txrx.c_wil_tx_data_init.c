
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil_ring_tx_data {int addba_in_progress; int lock; int mid; scalar_t__ agg_amsdu; scalar_t__ agg_timeout; scalar_t__ agg_wsize; scalar_t__ begin; scalar_t__ last_idle; scalar_t__ idle; scalar_t__ enabled; scalar_t__ dot1x_open; } ;


 int U8_MAX ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void wil_tx_data_init(struct wil_ring_tx_data *txdata)
{
 spin_lock_bh(&txdata->lock);
 txdata->dot1x_open = 0;
 txdata->enabled = 0;
 txdata->idle = 0;
 txdata->last_idle = 0;
 txdata->begin = 0;
 txdata->agg_wsize = 0;
 txdata->agg_timeout = 0;
 txdata->agg_amsdu = 0;
 txdata->addba_in_progress = 0;
 txdata->mid = U8_MAX;
 spin_unlock_bh(&txdata->lock);
}
