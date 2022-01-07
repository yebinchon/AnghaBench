
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_dev {int dev; } ;
struct net_device {int dummy; } ;
struct ibmvnic_adapter {int state; } ;


 int VNIC_REMOVED ;
 int VNIC_REMOVING ;
 int dev_attr_failover ;
 struct net_device* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int device_remove_file (int *,int *) ;
 int free_netdev (struct net_device*) ;
 struct ibmvnic_adapter* netdev_priv (struct net_device*) ;
 int release_crq_queue (struct ibmvnic_adapter*) ;
 int release_resources (struct ibmvnic_adapter*) ;
 int release_stats_buffers (struct ibmvnic_adapter*) ;
 int release_stats_token (struct ibmvnic_adapter*) ;
 int release_sub_crqs (struct ibmvnic_adapter*,int) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int unregister_netdevice (struct net_device*) ;

__attribute__((used)) static int ibmvnic_remove(struct vio_dev *dev)
{
 struct net_device *netdev = dev_get_drvdata(&dev->dev);
 struct ibmvnic_adapter *adapter = netdev_priv(netdev);

 adapter->state = VNIC_REMOVING;
 rtnl_lock();
 unregister_netdevice(netdev);

 release_resources(adapter);
 release_sub_crqs(adapter, 1);
 release_crq_queue(adapter);

 release_stats_token(adapter);
 release_stats_buffers(adapter);

 adapter->state = VNIC_REMOVED;

 rtnl_unlock();
 device_remove_file(&dev->dev, &dev_attr_failover);
 free_netdev(netdev);
 dev_set_drvdata(&dev->dev, ((void*)0));

 return 0;
}
