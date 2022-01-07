
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ crash_shutdown_unregister (int ) ;
 int ehea_crash_handler ;
 int ehea_mem_nb ;
 int ehea_memory_hooks_registered ;
 int ehea_reboot_nb ;
 int pr_info (char*) ;
 int unregister_memory_notifier (int *) ;
 int unregister_reboot_notifier (int *) ;

__attribute__((used)) static void ehea_unregister_memory_hooks(void)
{

 if (atomic_read(&ehea_memory_hooks_registered) == 0)
  return;

 unregister_reboot_notifier(&ehea_reboot_nb);
 if (crash_shutdown_unregister(ehea_crash_handler))
  pr_info("failed unregistering crash handler\n");
 unregister_memory_notifier(&ehea_mem_nb);
}
