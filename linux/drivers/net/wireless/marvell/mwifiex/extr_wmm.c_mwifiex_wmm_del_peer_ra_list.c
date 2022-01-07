
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mwifiex_ra_list_tbl {int list; scalar_t__ total_pkt_count; scalar_t__ tx_paused; } ;
struct TYPE_2__ {int ra_list_spinlock; int tx_pkts_queued; int * pkts_paused; } ;
struct mwifiex_private {TYPE_1__ wmm; } ;


 int MAX_NUM_TID ;
 int atomic_sub (scalar_t__,int *) ;
 int kfree (struct mwifiex_ra_list_tbl*) ;
 int list_del (int *) ;
 int mwifiex_wmm_del_pkts_in_ralist_node (struct mwifiex_private*,struct mwifiex_ra_list_tbl*) ;
 struct mwifiex_ra_list_tbl* mwifiex_wmm_get_ralist_node (struct mwifiex_private*,int,int const*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void
mwifiex_wmm_del_peer_ra_list(struct mwifiex_private *priv, const u8 *ra_addr)
{
 struct mwifiex_ra_list_tbl *ra_list;
 int i;

 spin_lock_bh(&priv->wmm.ra_list_spinlock);

 for (i = 0; i < MAX_NUM_TID; ++i) {
  ra_list = mwifiex_wmm_get_ralist_node(priv, i, ra_addr);

  if (!ra_list)
   continue;
  mwifiex_wmm_del_pkts_in_ralist_node(priv, ra_list);
  if (ra_list->tx_paused)
   priv->wmm.pkts_paused[i] -= ra_list->total_pkt_count;
  else
   atomic_sub(ra_list->total_pkt_count,
       &priv->wmm.tx_pkts_queued);
  list_del(&ra_list->list);
  kfree(ra_list);
 }
 spin_unlock_bh(&priv->wmm.ra_list_spinlock);
}
