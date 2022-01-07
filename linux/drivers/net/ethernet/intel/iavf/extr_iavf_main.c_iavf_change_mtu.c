
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct iavf_adapter {int reset_task; int flags; int vsi; } ;


 scalar_t__ CLIENT_ENABLED (struct iavf_adapter*) ;
 int IAVF_FLAG_RESET_NEEDED ;
 int IAVF_FLAG_SERVICE_CLIENT_REQUESTED ;
 int iavf_notify_client_l2_params (int *) ;
 int iavf_wq ;
 struct iavf_adapter* netdev_priv (struct net_device*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static int iavf_change_mtu(struct net_device *netdev, int new_mtu)
{
 struct iavf_adapter *adapter = netdev_priv(netdev);

 netdev->mtu = new_mtu;
 if (CLIENT_ENABLED(adapter)) {
  iavf_notify_client_l2_params(&adapter->vsi);
  adapter->flags |= IAVF_FLAG_SERVICE_CLIENT_REQUESTED;
 }
 adapter->flags |= IAVF_FLAG_RESET_NEEDED;
 queue_work(iavf_wq, &adapter->reset_task);

 return 0;
}
