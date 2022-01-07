
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 unsigned long SYS_RESTART ;
 int ehea_driver ;
 int ibmebus_unregister_driver (int *) ;
 int pr_info (char*) ;

__attribute__((used)) static int ehea_reboot_notifier(struct notifier_block *nb,
    unsigned long action, void *unused)
{
 if (action == SYS_RESTART) {
  pr_info("Reboot: freeing all eHEA resources\n");
  ibmebus_unregister_driver(&ehea_driver);
 }
 return NOTIFY_DONE;
}
