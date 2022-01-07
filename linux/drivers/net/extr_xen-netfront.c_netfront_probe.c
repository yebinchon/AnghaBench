
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xenbus_device_id {int dummy; } ;
struct xenbus_device {int dev; } ;
struct netfront_info {TYPE_1__* netdev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int ** sysfs_groups; } ;


 scalar_t__ IS_ERR (struct net_device*) ;
 int PTR_ERR (struct net_device*) ;
 int dev_set_drvdata (int *,struct netfront_info*) ;
 struct netfront_info* netdev_priv (struct net_device*) ;
 int xenbus_dev_fatal (struct xenbus_device*,int,char*) ;
 struct net_device* xennet_create_dev (struct xenbus_device*) ;
 int xennet_dev_group ;

__attribute__((used)) static int netfront_probe(struct xenbus_device *dev,
     const struct xenbus_device_id *id)
{
 int err;
 struct net_device *netdev;
 struct netfront_info *info;

 netdev = xennet_create_dev(dev);
 if (IS_ERR(netdev)) {
  err = PTR_ERR(netdev);
  xenbus_dev_fatal(dev, err, "creating netdev");
  return err;
 }

 info = netdev_priv(netdev);
 dev_set_drvdata(&dev->dev, info);




 return 0;
}
