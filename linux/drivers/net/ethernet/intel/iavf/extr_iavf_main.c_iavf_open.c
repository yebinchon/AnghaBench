
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int name; } ;
struct TYPE_5__ {int addr; } ;
struct TYPE_6__ {TYPE_2__ mac; } ;
struct iavf_adapter {int flags; scalar_t__ state; int crit_section; int mac_vlan_list_lock; TYPE_3__ hw; TYPE_1__* pdev; } ;
struct TYPE_4__ {int dev; } ;


 int EBUSY ;
 int EIO ;
 int IAVF_FLAG_PF_COMMS_FAILED ;
 scalar_t__ __IAVF_DOWN ;
 int __IAVF_IN_CRITICAL_TASK ;
 int clear_bit (int ,int *) ;
 int dev_err (int *,char*) ;
 int iavf_add_filter (struct iavf_adapter*,int ) ;
 int iavf_configure (struct iavf_adapter*) ;
 int iavf_down (struct iavf_adapter*) ;
 int iavf_free_all_rx_resources (struct iavf_adapter*) ;
 int iavf_free_all_tx_resources (struct iavf_adapter*) ;
 int iavf_free_traffic_irqs (struct iavf_adapter*) ;
 int iavf_irq_enable (struct iavf_adapter*,int) ;
 int iavf_request_traffic_irqs (struct iavf_adapter*,int ) ;
 int iavf_setup_all_rx_resources (struct iavf_adapter*) ;
 int iavf_setup_all_tx_resources (struct iavf_adapter*) ;
 int iavf_up_complete (struct iavf_adapter*) ;
 struct iavf_adapter* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int iavf_open(struct net_device *netdev)
{
 struct iavf_adapter *adapter = netdev_priv(netdev);
 int err;

 if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED) {
  dev_err(&adapter->pdev->dev, "Unable to open device due to PF driver failure.\n");
  return -EIO;
 }

 while (test_and_set_bit(__IAVF_IN_CRITICAL_TASK,
    &adapter->crit_section))
  usleep_range(500, 1000);

 if (adapter->state != __IAVF_DOWN) {
  err = -EBUSY;
  goto err_unlock;
 }


 err = iavf_setup_all_tx_resources(adapter);
 if (err)
  goto err_setup_tx;


 err = iavf_setup_all_rx_resources(adapter);
 if (err)
  goto err_setup_rx;


 err = iavf_request_traffic_irqs(adapter, netdev->name);
 if (err)
  goto err_req_irq;

 spin_lock_bh(&adapter->mac_vlan_list_lock);

 iavf_add_filter(adapter, adapter->hw.mac.addr);

 spin_unlock_bh(&adapter->mac_vlan_list_lock);

 iavf_configure(adapter);

 iavf_up_complete(adapter);

 iavf_irq_enable(adapter, 1);

 clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);

 return 0;

err_req_irq:
 iavf_down(adapter);
 iavf_free_traffic_irqs(adapter);
err_setup_rx:
 iavf_free_all_rx_resources(adapter);
err_setup_tx:
 iavf_free_all_tx_resources(adapter);
err_unlock:
 clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);

 return err;
}
