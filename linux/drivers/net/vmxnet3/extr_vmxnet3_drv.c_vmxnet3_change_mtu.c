
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_adapter {int state; } ;
struct net_device {int mtu; } ;


 int VMXNET3_STATE_BIT_RESETTING ;
 int clear_bit (int ,int *) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct vmxnet3_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int usleep_range (int,int) ;
 int vmxnet3_activate_dev (struct vmxnet3_adapter*) ;
 int vmxnet3_adjust_rx_ring_size (struct vmxnet3_adapter*) ;
 int vmxnet3_force_close (struct vmxnet3_adapter*) ;
 int vmxnet3_quiesce_dev (struct vmxnet3_adapter*) ;
 int vmxnet3_reset_dev (struct vmxnet3_adapter*) ;
 int vmxnet3_rq_create_all (struct vmxnet3_adapter*) ;
 int vmxnet3_rq_destroy_all (struct vmxnet3_adapter*) ;

__attribute__((used)) static int
vmxnet3_change_mtu(struct net_device *netdev, int new_mtu)
{
 struct vmxnet3_adapter *adapter = netdev_priv(netdev);
 int err = 0;

 netdev->mtu = new_mtu;





 while (test_and_set_bit(VMXNET3_STATE_BIT_RESETTING, &adapter->state))
  usleep_range(1000, 2000);

 if (netif_running(netdev)) {
  vmxnet3_quiesce_dev(adapter);
  vmxnet3_reset_dev(adapter);


  vmxnet3_rq_destroy_all(adapter);
  vmxnet3_adjust_rx_ring_size(adapter);
  err = vmxnet3_rq_create_all(adapter);
  if (err) {
   netdev_err(netdev,
       "failed to re-create rx queues, "
       " error %d. Closing it.\n", err);
   goto out;
  }

  err = vmxnet3_activate_dev(adapter);
  if (err) {
   netdev_err(netdev,
       "failed to re-activate, error %d. "
       "Closing it\n", err);
   goto out;
  }
 }

out:
 clear_bit(VMXNET3_STATE_BIT_RESETTING, &adapter->state);
 if (err)
  vmxnet3_force_close(adapter);

 return err;
}
