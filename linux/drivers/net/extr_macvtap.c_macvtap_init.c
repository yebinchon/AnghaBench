
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int THIS_MODULE ;
 int class_register (int *) ;
 int class_unregister (int *) ;
 int macvlan_link_register (int *) ;
 int macvtap_cdev ;
 int macvtap_class ;
 int macvtap_link_ops ;
 int macvtap_major ;
 int macvtap_notifier_block ;
 int register_netdevice_notifier (int *) ;
 int tap_create_cdev (int *,int *,char*,int ) ;
 int tap_destroy_cdev (int ,int *) ;
 int unregister_netdevice_notifier (int *) ;

__attribute__((used)) static int macvtap_init(void)
{
 int err;

 err = tap_create_cdev(&macvtap_cdev, &macvtap_major, "macvtap",
         THIS_MODULE);
 if (err)
  goto out1;

 err = class_register(&macvtap_class);
 if (err)
  goto out2;

 err = register_netdevice_notifier(&macvtap_notifier_block);
 if (err)
  goto out3;

 err = macvlan_link_register(&macvtap_link_ops);
 if (err)
  goto out4;

 return 0;

out4:
 unregister_netdevice_notifier(&macvtap_notifier_block);
out3:
 class_unregister(&macvtap_class);
out2:
 tap_destroy_cdev(macvtap_major, &macvtap_cdev);
out1:
 return err;
}
