
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vio_dev {int dev; } ;
struct net_device {int dummy; } ;
struct ibmveth_adapter {TYPE_1__* rx_buff_pool; } ;
struct TYPE_2__ {int kobj; } ;


 int IBMVETH_NUM_BUFF_POOLS ;
 struct net_device* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int free_netdev (struct net_device*) ;
 int kobject_put (int *) ;
 struct ibmveth_adapter* netdev_priv (struct net_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int ibmveth_remove(struct vio_dev *dev)
{
 struct net_device *netdev = dev_get_drvdata(&dev->dev);
 struct ibmveth_adapter *adapter = netdev_priv(netdev);
 int i;

 for (i = 0; i < IBMVETH_NUM_BUFF_POOLS; i++)
  kobject_put(&adapter->rx_buff_pool[i].kobj);

 unregister_netdev(netdev);

 free_netdev(netdev);
 dev_set_drvdata(&dev->dev, ((void*)0));

 return 0;
}
