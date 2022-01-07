
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int class_unregister (int *) ;
 int macvtap_cdev ;
 int macvtap_class ;
 int macvtap_link_ops ;
 int macvtap_major ;
 int macvtap_notifier_block ;
 int rtnl_link_unregister (int *) ;
 int tap_destroy_cdev (int ,int *) ;
 int unregister_netdevice_notifier (int *) ;

__attribute__((used)) static void macvtap_exit(void)
{
 rtnl_link_unregister(&macvtap_link_ops);
 unregister_netdevice_notifier(&macvtap_notifier_block);
 class_unregister(&macvtap_class);
 tap_destroy_cdev(macvtap_major, &macvtap_cdev);
}
