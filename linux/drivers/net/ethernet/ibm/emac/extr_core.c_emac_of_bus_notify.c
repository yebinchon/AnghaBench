
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 unsigned long BUS_NOTIFY_BOUND_DRIVER ;
 int emac_probe_wait ;
 int wake_up_all (int *) ;

__attribute__((used)) static int emac_of_bus_notify(struct notifier_block *nb, unsigned long action,
         void *data)
{

 if (action == BUS_NOTIFY_BOUND_DRIVER)
  wake_up_all(&emac_probe_wait);
 return 0;
}
