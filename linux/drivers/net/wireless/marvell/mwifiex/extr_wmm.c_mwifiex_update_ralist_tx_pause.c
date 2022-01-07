
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct mwifiex_ra_list_tbl {scalar_t__ tx_paused; scalar_t__ total_pkt_count; } ;
struct TYPE_2__ {int ra_list_spinlock; int highest_queued_prio; int tx_pkts_queued; int * pkts_paused; } ;
struct mwifiex_private {TYPE_1__ wmm; } ;


 scalar_t__ HIGH_PRIO_TID ;
 int MAX_NUM_TID ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,scalar_t__) ;
 struct mwifiex_ra_list_tbl* mwifiex_wmm_get_ralist_node (struct mwifiex_private*,int,scalar_t__*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void mwifiex_update_ralist_tx_pause(struct mwifiex_private *priv, u8 *mac,
        u8 tx_pause)
{
 struct mwifiex_ra_list_tbl *ra_list;
 u32 pkt_cnt = 0, tx_pkts_queued;
 int i;

 spin_lock_bh(&priv->wmm.ra_list_spinlock);

 for (i = 0; i < MAX_NUM_TID; ++i) {
  ra_list = mwifiex_wmm_get_ralist_node(priv, i, mac);
  if (ra_list && ra_list->tx_paused != tx_pause) {
   pkt_cnt += ra_list->total_pkt_count;
   ra_list->tx_paused = tx_pause;
   if (tx_pause)
    priv->wmm.pkts_paused[i] +=
     ra_list->total_pkt_count;
   else
    priv->wmm.pkts_paused[i] -=
     ra_list->total_pkt_count;
  }
 }

 if (pkt_cnt) {
  tx_pkts_queued = atomic_read(&priv->wmm.tx_pkts_queued);
  if (tx_pause)
   tx_pkts_queued -= pkt_cnt;
  else
   tx_pkts_queued += pkt_cnt;

  atomic_set(&priv->wmm.tx_pkts_queued, tx_pkts_queued);
  atomic_set(&priv->wmm.highest_queued_prio, HIGH_PRIO_TID);
 }
 spin_unlock_bh(&priv->wmm.ra_list_spinlock);
}
