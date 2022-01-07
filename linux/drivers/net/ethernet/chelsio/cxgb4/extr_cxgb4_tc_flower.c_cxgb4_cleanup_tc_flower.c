
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ function; } ;
struct adapter {int tc_flower_initialized; int flower_tbl; int flower_stats_work; TYPE_1__ flower_stats_timer; } ;


 int cancel_work_sync (int *) ;
 int del_timer_sync (TYPE_1__*) ;
 int rhashtable_destroy (int *) ;

void cxgb4_cleanup_tc_flower(struct adapter *adap)
{
 if (!adap->tc_flower_initialized)
  return;

 if (adap->flower_stats_timer.function)
  del_timer_sync(&adap->flower_stats_timer);
 cancel_work_sync(&adap->flower_stats_work);
 rhashtable_destroy(&adap->flower_tbl);
 adap->tc_flower_initialized = 0;
}
