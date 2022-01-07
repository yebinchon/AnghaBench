
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ibmvnic_adapter {scalar_t__ state; int tasklet; } ;
struct device {int dummy; } ;


 scalar_t__ VNIC_OPEN ;
 struct net_device* dev_get_drvdata (struct device*) ;
 struct ibmvnic_adapter* netdev_priv (struct net_device*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static int ibmvnic_resume(struct device *dev)
{
 struct net_device *netdev = dev_get_drvdata(dev);
 struct ibmvnic_adapter *adapter = netdev_priv(netdev);

 if (adapter->state != VNIC_OPEN)
  return 0;

 tasklet_schedule(&adapter->tasklet);

 return 0;
}
