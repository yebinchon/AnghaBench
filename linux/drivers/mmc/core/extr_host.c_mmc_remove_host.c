
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int led; int class_dev; } ;


 int device_del (int *) ;
 int led_trigger_unregister_simple (int ) ;
 int mmc_remove_host_debugfs (struct mmc_host*) ;
 int mmc_stop_host (struct mmc_host*) ;
 int mmc_unregister_pm_notifier (struct mmc_host*) ;

void mmc_remove_host(struct mmc_host *host)
{
 mmc_unregister_pm_notifier(host);
 mmc_stop_host(host);





 device_del(&host->class_dev);

 led_trigger_unregister_simple(host->led);
}
