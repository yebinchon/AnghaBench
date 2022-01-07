
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int features; } ;
struct ibmveth_adapter {int pool_config; int fw_large_send_support; int large_send; TYPE_1__* vdev; } ;
struct TYPE_2__ {int unit_address; } ;


 int EIO ;
 long H_SUCCESS ;
 unsigned long IBMVETH_ILLAN_LRG_SND_SUPPORT ;
 unsigned long IBMVETH_ILLAN_LRG_SR_ENABLED ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 long h_illan_attributes (int ,unsigned long,unsigned long,unsigned long*) ;
 int ibmveth_close (struct net_device*) ;
 int ibmveth_open (struct net_device*) ;
 int netdev_err (struct net_device*,char*,int,long) ;
 int netdev_info (struct net_device*,char*) ;
 struct ibmveth_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int old_large_send ;

__attribute__((used)) static int ibmveth_set_tso(struct net_device *dev, u32 data)
{
 struct ibmveth_adapter *adapter = netdev_priv(dev);
 unsigned long set_attr, clr_attr, ret_attr;
 long ret1, ret2;
 int rc1 = 0, rc2 = 0;
 int restart = 0;

 if (netif_running(dev)) {
  restart = 1;
  adapter->pool_config = 1;
  ibmveth_close(dev);
  adapter->pool_config = 0;
 }

 set_attr = 0;
 clr_attr = 0;

 if (data)
  set_attr = IBMVETH_ILLAN_LRG_SR_ENABLED;
 else
  clr_attr = IBMVETH_ILLAN_LRG_SR_ENABLED;

 ret1 = h_illan_attributes(adapter->vdev->unit_address, 0, 0, &ret_attr);

 if (ret1 == H_SUCCESS && (ret_attr & IBMVETH_ILLAN_LRG_SND_SUPPORT) &&
     !old_large_send) {
  ret2 = h_illan_attributes(adapter->vdev->unit_address, clr_attr,
       set_attr, &ret_attr);

  if (ret2 != H_SUCCESS) {
   netdev_err(dev, "unable to change tso settings. %d rc=%ld\n",
       data, ret2);

   h_illan_attributes(adapter->vdev->unit_address,
        set_attr, clr_attr, &ret_attr);

   if (data == 1)
    dev->features &= ~(NETIF_F_TSO | NETIF_F_TSO6);
   rc1 = -EIO;

  } else {
   adapter->fw_large_send_support = data;
   adapter->large_send = data;
  }
 } else {



  if (data == 1) {
   dev->features &= ~NETIF_F_TSO6;
   netdev_info(dev, "TSO feature requires all partitions to have updated driver");
  }
  adapter->large_send = data;
 }

 if (restart)
  rc2 = ibmveth_open(dev);

 return rc1 ? rc1 : rc2;
}
