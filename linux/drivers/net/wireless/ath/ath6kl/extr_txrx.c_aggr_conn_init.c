
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct rxtid {int aggr; int timer_mon; int lock; int q; } ;
struct ath6kl_vif {int ndev; } ;
struct aggr_info_conn {int timer_scheduled; struct rxtid* rx_tid; struct aggr_info* aggr_info; int timer; int dev; int aggr_sz; } ;
struct aggr_info {int dummy; } ;


 int AGGR_SZ_DEFAULT ;
 size_t NUM_OF_TIDS ;
 int aggr_timeout ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

void aggr_conn_init(struct ath6kl_vif *vif, struct aggr_info *aggr_info,
      struct aggr_info_conn *aggr_conn)
{
 struct rxtid *rxtid;
 u8 i;

 aggr_conn->aggr_sz = AGGR_SZ_DEFAULT;
 aggr_conn->dev = vif->ndev;
 timer_setup(&aggr_conn->timer, aggr_timeout, 0);
 aggr_conn->aggr_info = aggr_info;

 aggr_conn->timer_scheduled = 0;

 for (i = 0; i < NUM_OF_TIDS; i++) {
  rxtid = &aggr_conn->rx_tid[i];
  rxtid->aggr = 0;
  rxtid->timer_mon = 0;
  skb_queue_head_init(&rxtid->q);
  spin_lock_init(&rxtid->lock);
 }
}
