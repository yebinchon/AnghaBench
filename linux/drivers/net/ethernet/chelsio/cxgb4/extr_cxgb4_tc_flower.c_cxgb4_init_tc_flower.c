
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int tc_flower_initialized; int flower_stats_timer; int flower_stats_work; int flower_ht_params; int flower_tbl; } ;


 int EEXIST ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ STATS_CHECK_PERIOD ;
 int ch_flower_stats_cb ;
 int ch_flower_stats_handler ;
 int cxgb4_tc_flower_ht_params ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int rhashtable_init (int *,int *) ;
 int timer_setup (int *,int ,int ) ;

int cxgb4_init_tc_flower(struct adapter *adap)
{
 int ret;

 if (adap->tc_flower_initialized)
  return -EEXIST;

 adap->flower_ht_params = cxgb4_tc_flower_ht_params;
 ret = rhashtable_init(&adap->flower_tbl, &adap->flower_ht_params);
 if (ret)
  return ret;

 INIT_WORK(&adap->flower_stats_work, ch_flower_stats_handler);
 timer_setup(&adap->flower_stats_timer, ch_flower_stats_cb, 0);
 mod_timer(&adap->flower_stats_timer, jiffies + STATS_CHECK_PERIOD);
 adap->tc_flower_initialized = 1;
 return 0;
}
