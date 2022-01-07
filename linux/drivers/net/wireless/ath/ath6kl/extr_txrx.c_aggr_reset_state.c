
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct aggr_info_conn {int timer_scheduled; int timer; } ;


 scalar_t__ NUM_OF_TIDS ;
 int aggr_delete_tid_state (struct aggr_info_conn*,scalar_t__) ;
 int del_timer (int *) ;

void aggr_reset_state(struct aggr_info_conn *aggr_conn)
{
 u8 tid;

 if (!aggr_conn)
  return;

 if (aggr_conn->timer_scheduled) {
  del_timer(&aggr_conn->timer);
  aggr_conn->timer_scheduled = 0;
 }

 for (tid = 0; tid < NUM_OF_TIDS; tid++)
  aggr_delete_tid_state(aggr_conn, tid);
}
