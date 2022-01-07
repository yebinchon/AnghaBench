
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;


 int NOTIFY_DONE ;



 int notifier_from_errno (int) ;
 int ocelot_netdevice_dev_check ;
 int ocelot_port_attr_set ;
 int ocelot_port_obj_add ;
 int ocelot_port_obj_del ;
 int switchdev_handle_port_attr_set (struct net_device*,void*,int ,int ) ;
 int switchdev_handle_port_obj_add (struct net_device*,void*,int ,int ) ;
 int switchdev_handle_port_obj_del (struct net_device*,void*,int ,int ) ;
 struct net_device* switchdev_notifier_info_to_dev (void*) ;

__attribute__((used)) static int ocelot_switchdev_blocking_event(struct notifier_block *unused,
        unsigned long event, void *ptr)
{
 struct net_device *dev = switchdev_notifier_info_to_dev(ptr);
 int err;

 switch (event) {

 case 129:
  err = switchdev_handle_port_obj_add(dev, ptr,
          ocelot_netdevice_dev_check,
          ocelot_port_obj_add);
  return notifier_from_errno(err);
 case 128:
  err = switchdev_handle_port_obj_del(dev, ptr,
          ocelot_netdevice_dev_check,
          ocelot_port_obj_del);
  return notifier_from_errno(err);
 case 130:
  err = switchdev_handle_port_attr_set(dev, ptr,
           ocelot_netdevice_dev_check,
           ocelot_port_attr_set);
  return notifier_from_errno(err);
 }

 return NOTIFY_DONE;
}
