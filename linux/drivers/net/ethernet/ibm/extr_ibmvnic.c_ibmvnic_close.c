
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ibmvnic_adapter {int state; scalar_t__ failover_pending; } ;


 int VNIC_CLOSED ;
 int __ibmvnic_close (struct net_device*) ;
 int ibmvnic_cleanup (struct net_device*) ;
 struct ibmvnic_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ibmvnic_close(struct net_device *netdev)
{
 struct ibmvnic_adapter *adapter = netdev_priv(netdev);
 int rc;




 if (adapter->failover_pending) {
  adapter->state = VNIC_CLOSED;
  return 0;
 }

 rc = __ibmvnic_close(netdev);
 ibmvnic_cleanup(netdev);

 return rc;
}
