
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int genl_unregister_family (int *) ;
 int hwsim_genl_family ;
 int hwsim_netlink_notifier ;
 int netlink_unregister_notifier (int *) ;

__attribute__((used)) static void hwsim_exit_netlink(void)
{

 netlink_unregister_notifier(&hwsim_netlink_notifier);

 genl_unregister_family(&hwsim_genl_family);
}
