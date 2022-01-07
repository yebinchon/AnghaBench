
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rfkill_poll; } ;
struct il_priv {int irq_tasklet; int watchdog; TYPE_1__ _3945; int alive_start; int init_alive_start; int rx_replenish; int restart; int wait_command_queue; int workqueue; } ;


 int DRV_NAME ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int create_singlethread_workqueue (int ) ;
 int il3945_bg_alive_start ;
 int il3945_bg_init_alive_start ;
 int il3945_bg_restart ;
 int il3945_bg_rx_replenish ;
 int il3945_hw_setup_deferred_work (struct il_priv*) ;
 scalar_t__ il3945_irq_tasklet ;
 int il3945_rfkill_poll ;
 int il_bg_watchdog ;
 int il_setup_scan_deferred_work (struct il_priv*) ;
 int init_waitqueue_head (int *) ;
 int tasklet_init (int *,void (*) (unsigned long),unsigned long) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static void
il3945_setup_deferred_work(struct il_priv *il)
{
 il->workqueue = create_singlethread_workqueue(DRV_NAME);

 init_waitqueue_head(&il->wait_command_queue);

 INIT_WORK(&il->restart, il3945_bg_restart);
 INIT_WORK(&il->rx_replenish, il3945_bg_rx_replenish);
 INIT_DELAYED_WORK(&il->init_alive_start, il3945_bg_init_alive_start);
 INIT_DELAYED_WORK(&il->alive_start, il3945_bg_alive_start);
 INIT_DELAYED_WORK(&il->_3945.rfkill_poll, il3945_rfkill_poll);

 il_setup_scan_deferred_work(il);

 il3945_hw_setup_deferred_work(il);

 timer_setup(&il->watchdog, il_bg_watchdog, 0);

 tasklet_init(&il->irq_tasklet,
       (void (*)(unsigned long))il3945_irq_tasklet,
       (unsigned long)il);
}
