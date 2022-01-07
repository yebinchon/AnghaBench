
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct TYPE_6__ {int kobj; } ;
struct net_device {int ifindex; TYPE_4__ dev; int * rtnl_link_ops; } ;
struct TYPE_5__ {int minor; } ;
struct ipvtap_dev {TYPE_1__ tap; } ;
struct device {int kobj; } ;
typedef int dev_t ;


 int IFNAMSIZ ;
 int IS_ERR (struct device*) ;
 int MAJOR (int ) ;
 int MKDEV (int ,int ) ;



 int NOTIFY_BAD ;
 int NOTIFY_DONE ;
 int PTR_ERR (struct device*) ;
 struct device* device_create (int *,TYPE_4__*,int ,struct net_device*,char*) ;
 int device_destroy (int *,int ) ;
 int ipvtap_class ;
 int ipvtap_link_ops ;
 int ipvtap_major ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 struct ipvtap_dev* netdev_priv (struct net_device*) ;
 int notifier_from_errno (int) ;
 int snprintf (char*,int,char*,int) ;
 int sysfs_create_link (int *,int *,char*) ;
 int sysfs_remove_link (int *,char*) ;
 int tap_free_minor (int ,TYPE_1__*) ;
 int tap_get_minor (int ,TYPE_1__*) ;
 int tap_queue_resize (TYPE_1__*) ;

__attribute__((used)) static int ipvtap_device_event(struct notifier_block *unused,
          unsigned long event, void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);
 struct ipvtap_dev *vlantap;
 struct device *classdev;
 dev_t devt;
 int err;
 char tap_name[IFNAMSIZ];

 if (dev->rtnl_link_ops != &ipvtap_link_ops)
  return NOTIFY_DONE;

 snprintf(tap_name, IFNAMSIZ, "tap%d", dev->ifindex);
 vlantap = netdev_priv(dev);

 switch (event) {
 case 129:




  err = tap_get_minor(ipvtap_major, &vlantap->tap);
  if (err)
   return notifier_from_errno(err);

  devt = MKDEV(MAJOR(ipvtap_major), vlantap->tap.minor);
  classdev = device_create(&ipvtap_class, &dev->dev, devt,
      dev, tap_name);
  if (IS_ERR(classdev)) {
   tap_free_minor(ipvtap_major, &vlantap->tap);
   return notifier_from_errno(PTR_ERR(classdev));
  }
  err = sysfs_create_link(&dev->dev.kobj, &classdev->kobj,
     tap_name);
  if (err)
   return notifier_from_errno(err);
  break;
 case 128:

  if (vlantap->tap.minor == 0)
   break;
  sysfs_remove_link(&dev->dev.kobj, tap_name);
  devt = MKDEV(MAJOR(ipvtap_major), vlantap->tap.minor);
  device_destroy(&ipvtap_class, devt);
  tap_free_minor(ipvtap_major, &vlantap->tap);
  break;
 case 130:
  if (tap_queue_resize(&vlantap->tap))
   return NOTIFY_BAD;
  break;
 }

 return NOTIFY_DONE;
}
