
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int irq_tasklet; int watchdog; int stats_periodic; int txpower_work; int alive_start; int init_alive_start; int run_time_calib_work; int rx_replenish; int restart; int wait_command_queue; int workqueue; } ;


 int DRV_NAME ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int create_singlethread_workqueue (int ) ;
 int il4965_bg_alive_start ;
 int il4965_bg_init_alive_start ;
 int il4965_bg_restart ;
 int il4965_bg_run_time_calib_work ;
 int il4965_bg_rx_replenish ;
 int il4965_bg_stats_periodic ;
 int il4965_bg_txpower_work ;
 scalar_t__ il4965_irq_tasklet ;
 int il_bg_watchdog ;
 int il_setup_scan_deferred_work (struct il_priv*) ;
 int init_waitqueue_head (int *) ;
 int tasklet_init (int *,void (*) (unsigned long),unsigned long) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static void
il4965_setup_deferred_work(struct il_priv *il)
{
 il->workqueue = create_singlethread_workqueue(DRV_NAME);

 init_waitqueue_head(&il->wait_command_queue);

 INIT_WORK(&il->restart, il4965_bg_restart);
 INIT_WORK(&il->rx_replenish, il4965_bg_rx_replenish);
 INIT_WORK(&il->run_time_calib_work, il4965_bg_run_time_calib_work);
 INIT_DELAYED_WORK(&il->init_alive_start, il4965_bg_init_alive_start);
 INIT_DELAYED_WORK(&il->alive_start, il4965_bg_alive_start);

 il_setup_scan_deferred_work(il);

 INIT_WORK(&il->txpower_work, il4965_bg_txpower_work);

 timer_setup(&il->stats_periodic, il4965_bg_stats_periodic, 0);

 timer_setup(&il->watchdog, il_bg_watchdog, 0);

 tasklet_init(&il->irq_tasklet,
       (void (*)(unsigned long))il4965_irq_tasklet,
       (unsigned long)il);
}
