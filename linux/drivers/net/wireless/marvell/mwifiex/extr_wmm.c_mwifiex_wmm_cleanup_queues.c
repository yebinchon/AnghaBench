
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int highest_queued_prio; int tx_pkts_queued; TYPE_1__* tid_tbl_ptr; } ;
struct mwifiex_private {TYPE_2__ wmm; } ;
struct TYPE_3__ {int ra_list; } ;


 int HIGH_PRIO_TID ;
 int MAX_NUM_TID ;
 int atomic_set (int *,int ) ;
 int mwifiex_wmm_del_pkts_in_ralist (struct mwifiex_private*,int *) ;

__attribute__((used)) static void mwifiex_wmm_cleanup_queues(struct mwifiex_private *priv)
{
 int i;

 for (i = 0; i < MAX_NUM_TID; i++)
  mwifiex_wmm_del_pkts_in_ralist(priv, &priv->wmm.tid_tbl_ptr[i].
               ra_list);

 atomic_set(&priv->wmm.tx_pkts_queued, 0);
 atomic_set(&priv->wmm.highest_queued_prio, HIGH_PRIO_TID);
}
