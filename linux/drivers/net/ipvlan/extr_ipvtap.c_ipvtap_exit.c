
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int class_unregister (int *) ;
 int ipvtap_cdev ;
 int ipvtap_class ;
 int ipvtap_link_ops ;
 int ipvtap_major ;
 int ipvtap_notifier_block ;
 int rtnl_link_unregister (int *) ;
 int tap_destroy_cdev (int ,int *) ;
 int unregister_netdevice_notifier (int *) ;

__attribute__((used)) static void ipvtap_exit(void)
{
 rtnl_link_unregister(&ipvtap_link_ops);
 unregister_netdevice_notifier(&ipvtap_notifier_block);
 class_unregister(&ipvtap_class);
 tap_destroy_cdev(ipvtap_major, &ipvtap_cdev);
}
