
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int THIS_MODULE ;
 int class_register (int *) ;
 int class_unregister (int *) ;
 int ipvlan_link_register (int *) ;
 int ipvtap_cdev ;
 int ipvtap_class ;
 int ipvtap_link_ops ;
 int ipvtap_major ;
 int ipvtap_notifier_block ;
 int register_netdevice_notifier (int *) ;
 int tap_create_cdev (int *,int *,char*,int ) ;
 int tap_destroy_cdev (int ,int *) ;
 int unregister_netdevice_notifier (int *) ;

__attribute__((used)) static int ipvtap_init(void)
{
 int err;

 err = tap_create_cdev(&ipvtap_cdev, &ipvtap_major, "ipvtap",
         THIS_MODULE);
 if (err)
  goto out1;

 err = class_register(&ipvtap_class);
 if (err)
  goto out2;

 err = register_netdevice_notifier(&ipvtap_notifier_block);
 if (err)
  goto out3;

 err = ipvlan_link_register(&ipvtap_link_ops);
 if (err)
  goto out4;

 return 0;

out4:
 unregister_netdevice_notifier(&ipvtap_notifier_block);
out3:
 class_unregister(&ipvtap_class);
out2:
 tap_destroy_cdev(ipvtap_major, &ipvtap_cdev);
out1:
 return err;
}
