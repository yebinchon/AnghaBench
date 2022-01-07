
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_dec (int *) ;
 int atomic_inc_return (int *) ;
 int crash_shutdown_register (int ) ;
 int ehea_crash_handler ;
 int ehea_create_busmap () ;
 int ehea_mem_nb ;
 int ehea_memory_hooks_registered ;
 int ehea_reboot_nb ;
 int pr_info (char*) ;
 int register_memory_notifier (int *) ;
 int register_reboot_notifier (int *) ;
 int unregister_memory_notifier (int *) ;
 int unregister_reboot_notifier (int *) ;

__attribute__((used)) static int ehea_register_memory_hooks(void)
{
 int ret = 0;

 if (atomic_inc_return(&ehea_memory_hooks_registered) > 1)
  return 0;

 ret = ehea_create_busmap();
 if (ret) {
  pr_info("ehea_create_busmap failed\n");
  goto out;
 }

 ret = register_reboot_notifier(&ehea_reboot_nb);
 if (ret) {
  pr_info("register_reboot_notifier failed\n");
  goto out;
 }

 ret = register_memory_notifier(&ehea_mem_nb);
 if (ret) {
  pr_info("register_memory_notifier failed\n");
  goto out2;
 }

 ret = crash_shutdown_register(ehea_crash_handler);
 if (ret) {
  pr_info("crash_shutdown_register failed\n");
  goto out3;
 }

 return 0;

out3:
 unregister_memory_notifier(&ehea_mem_nb);
out2:
 unregister_reboot_notifier(&ehea_reboot_nb);
out:
 atomic_dec(&ehea_memory_hooks_registered);
 return ret;
}
