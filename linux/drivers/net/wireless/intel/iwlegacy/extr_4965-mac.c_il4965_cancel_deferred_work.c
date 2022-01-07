
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int stats_periodic; int run_time_calib_work; int alive_start; int init_alive_start; int txpower_work; } ;


 int cancel_delayed_work (int *) ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int il_cancel_scan_deferred_work (struct il_priv*) ;

__attribute__((used)) static void
il4965_cancel_deferred_work(struct il_priv *il)
{
 cancel_work_sync(&il->txpower_work);
 cancel_delayed_work_sync(&il->init_alive_start);
 cancel_delayed_work(&il->alive_start);
 cancel_work_sync(&il->run_time_calib_work);

 il_cancel_scan_deferred_work(il);

 del_timer_sync(&il->stats_periodic);
}
