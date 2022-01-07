
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;






 int NOTIFY_DONE ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int pppoe_flush_dev (struct net_device*) ;

__attribute__((used)) static int pppoe_device_event(struct notifier_block *this,
         unsigned long event, void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);


 switch (event) {
 case 131:
 case 130:




 case 128:
 case 129:

  pppoe_flush_dev(dev);
  break;

 default:
  break;
 }

 return NOTIFY_DONE;
}
