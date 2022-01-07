
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ibmvnic_adapter {int state; } ;


 int IBMVNIC_LOGICAL_LNK_DN ;
 int VNIC_CLOSED ;
 int VNIC_CLOSING ;
 struct ibmvnic_adapter* netdev_priv (struct net_device*) ;
 int set_link_state (struct ibmvnic_adapter*,int ) ;

__attribute__((used)) static int __ibmvnic_close(struct net_device *netdev)
{
 struct ibmvnic_adapter *adapter = netdev_priv(netdev);
 int rc = 0;

 adapter->state = VNIC_CLOSING;
 rc = set_link_state(adapter, IBMVNIC_LOGICAL_LNK_DN);
 if (rc)
  return rc;
 adapter->state = VNIC_CLOSED;
 return 0;
}
