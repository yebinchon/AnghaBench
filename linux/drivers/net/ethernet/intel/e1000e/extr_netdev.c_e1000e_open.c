
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int get_link_status; } ;
struct TYPE_3__ {int status; } ;
struct e1000_hw {TYPE_2__ mac; TYPE_1__ mng_cookie; } ;
struct e1000_adapter {int flags; scalar_t__ int_mode; int tx_hang_recheck; int tx_ring; int rx_ring; int pm_qos_req; int napi; int state; struct e1000_hw hw; int mng_vlan_id; struct pci_dev* pdev; } ;


 scalar_t__ E1000E_INT_MODE_LEGACY ;
 int E1000_MNG_DHCP_COOKIE_STATUS_VLAN ;
 int E1000_MNG_VLAN_NONE ;
 int EBUSY ;
 int FLAG_HAS_AMT ;
 int PM_QOS_CPU_DMA_LATENCY ;
 int PM_QOS_DEFAULT_VALUE ;
 int __E1000_DOWN ;
 int __E1000_TESTING ;
 int clear_bit (int ,int *) ;
 int e1000_configure (struct e1000_adapter*) ;
 int e1000_irq_enable (struct e1000_adapter*) ;
 int e1000_power_down_phy (struct e1000_adapter*) ;
 int e1000_request_irq (struct e1000_adapter*) ;
 int e1000_test_msi (struct e1000_adapter*) ;
 int e1000_update_mng_vlan (struct e1000_adapter*) ;
 int e1000e_free_rx_resources (int ) ;
 int e1000e_free_tx_resources (int ) ;
 int e1000e_get_hw_control (struct e1000_adapter*) ;
 int e1000e_power_up_phy (struct e1000_adapter*) ;
 int e1000e_release_hw_control (struct e1000_adapter*) ;
 int e1000e_reset (struct e1000_adapter*) ;
 int e1000e_setup_rx_resources (int ) ;
 int e1000e_setup_tx_resources (int ) ;
 int e1000e_trigger_lsc (struct e1000_adapter*) ;
 int e_err (char*) ;
 int napi_enable (int *) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int pm_qos_add_request (int *,int ,int ) ;
 int pm_qos_remove_request (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put (int *) ;
 int pm_runtime_put_sync (int *) ;
 scalar_t__ test_bit (int ,int *) ;

int e1000e_open(struct net_device *netdev)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 struct pci_dev *pdev = adapter->pdev;
 int err;


 if (test_bit(__E1000_TESTING, &adapter->state))
  return -EBUSY;

 pm_runtime_get_sync(&pdev->dev);

 netif_carrier_off(netdev);
 netif_stop_queue(netdev);


 err = e1000e_setup_tx_resources(adapter->tx_ring);
 if (err)
  goto err_setup_tx;


 err = e1000e_setup_rx_resources(adapter->rx_ring);
 if (err)
  goto err_setup_rx;




 if (adapter->flags & FLAG_HAS_AMT) {
  e1000e_get_hw_control(adapter);
  e1000e_reset(adapter);
 }

 e1000e_power_up_phy(adapter);

 adapter->mng_vlan_id = E1000_MNG_VLAN_NONE;
 if ((adapter->hw.mng_cookie.status & E1000_MNG_DHCP_COOKIE_STATUS_VLAN))
  e1000_update_mng_vlan(adapter);


 pm_qos_add_request(&adapter->pm_qos_req, PM_QOS_CPU_DMA_LATENCY,
      PM_QOS_DEFAULT_VALUE);






 e1000_configure(adapter);

 err = e1000_request_irq(adapter);
 if (err)
  goto err_req_irq;





 if (adapter->int_mode != E1000E_INT_MODE_LEGACY) {
  err = e1000_test_msi(adapter);
  if (err) {
   e_err("Interrupt allocation failed\n");
   goto err_req_irq;
  }
 }


 clear_bit(__E1000_DOWN, &adapter->state);

 napi_enable(&adapter->napi);

 e1000_irq_enable(adapter);

 adapter->tx_hang_recheck = 0;

 hw->mac.get_link_status = 1;
 pm_runtime_put(&pdev->dev);

 e1000e_trigger_lsc(adapter);

 return 0;

err_req_irq:
 pm_qos_remove_request(&adapter->pm_qos_req);
 e1000e_release_hw_control(adapter);
 e1000_power_down_phy(adapter);
 e1000e_free_rx_resources(adapter->rx_ring);
err_setup_rx:
 e1000e_free_tx_resources(adapter->tx_ring);
err_setup_tx:
 e1000e_reset(adapter);
 pm_runtime_put_sync(&pdev->dev);

 return err;
}
