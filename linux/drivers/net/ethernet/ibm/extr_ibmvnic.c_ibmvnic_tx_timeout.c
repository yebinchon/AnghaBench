
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ibmvnic_adapter {int dummy; } ;


 int VNIC_RESET_TIMEOUT ;
 int ibmvnic_reset (struct ibmvnic_adapter*,int ) ;
 struct ibmvnic_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ibmvnic_tx_timeout(struct net_device *dev)
{
 struct ibmvnic_adapter *adapter = netdev_priv(dev);

 ibmvnic_reset(adapter, VNIC_RESET_TIMEOUT);
}
