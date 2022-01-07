
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mwifiex_tid_tbl {int ra_list; } ;
struct mwifiex_ra_list_tbl {int list; } ;
struct TYPE_4__ {int ra_list_spinlock; int * packets_out; struct mwifiex_tid_tbl* tid_tbl_ptr; } ;
struct mwifiex_private {size_t bss_priority; TYPE_2__ wmm; struct mwifiex_adapter* adapter; } ;
struct mwifiex_bss_prio_tbl {int bss_prio_lock; TYPE_1__* bss_prio_cur; int bss_prio_head; } ;
struct mwifiex_adapter {struct mwifiex_bss_prio_tbl* bss_prio_tbl; } ;
struct TYPE_3__ {int list; } ;


 int list_move (int *,int *) ;
 scalar_t__ mwifiex_is_ralist_valid (struct mwifiex_private*,struct mwifiex_ra_list_tbl*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void mwifiex_rotate_priolists(struct mwifiex_private *priv,
     struct mwifiex_ra_list_tbl *ra,
     int tid)
{
 struct mwifiex_adapter *adapter = priv->adapter;
 struct mwifiex_bss_prio_tbl *tbl = adapter->bss_prio_tbl;
 struct mwifiex_tid_tbl *tid_ptr = &priv->wmm.tid_tbl_ptr[tid];

 spin_lock_bh(&tbl[priv->bss_priority].bss_prio_lock);




 list_move(&tbl[priv->bss_priority].bss_prio_head,
    &tbl[priv->bss_priority].bss_prio_cur->list);
 spin_unlock_bh(&tbl[priv->bss_priority].bss_prio_lock);

 spin_lock_bh(&priv->wmm.ra_list_spinlock);
 if (mwifiex_is_ralist_valid(priv, ra, tid)) {
  priv->wmm.packets_out[tid]++;

  list_move(&tid_ptr->ra_list, &ra->list);
 }
 spin_unlock_bh(&priv->wmm.ra_list_spinlock);
}
