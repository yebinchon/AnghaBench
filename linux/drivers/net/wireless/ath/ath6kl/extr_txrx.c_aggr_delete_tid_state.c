
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct rxtid_stats {int dummy; } ;
struct rxtid {int aggr; int timer_mon; int * hold_q; scalar_t__ hold_q_sz; scalar_t__ seq_next; scalar_t__ win_sz; } ;
struct aggr_info_conn {struct rxtid_stats* stat; struct rxtid* rx_tid; } ;


 size_t NUM_OF_TIDS ;
 int aggr_deque_frms (struct aggr_info_conn*,size_t,int ,int ) ;
 int kfree (int *) ;
 int memset (struct rxtid_stats*,int ,int) ;

__attribute__((used)) static void aggr_delete_tid_state(struct aggr_info_conn *aggr_conn, u8 tid)
{
 struct rxtid *rxtid;
 struct rxtid_stats *stats;

 if (!aggr_conn || tid >= NUM_OF_TIDS)
  return;

 rxtid = &aggr_conn->rx_tid[tid];
 stats = &aggr_conn->stat[tid];

 if (rxtid->aggr)
  aggr_deque_frms(aggr_conn, tid, 0, 0);

 rxtid->aggr = 0;
 rxtid->timer_mon = 0;
 rxtid->win_sz = 0;
 rxtid->seq_next = 0;
 rxtid->hold_q_sz = 0;

 kfree(rxtid->hold_q);
 rxtid->hold_q = ((void*)0);

 memset(stats, 0, sizeof(struct rxtid_stats));
}
