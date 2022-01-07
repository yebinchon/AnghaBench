
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int get_link_status; } ;
struct e1000_hw {TYPE_2__ mac; } ;
struct igb_adapter {int num_q_vectors; int watchdog_task; scalar_t__ vfs_allocated_count; TYPE_1__** q_vector; int state; int num_rx_queues; int netdev; int num_tx_queues; struct pci_dev* pdev; struct e1000_hw hw; } ;
struct TYPE_3__ {int napi; } ;


 int E1000_CTRL_EXT ;
 int E1000_CTRL_EXT_PFRSTD ;
 int E1000_ICR ;
 int E1000_TSICR ;
 int EBUSY ;
 int WARN_ON (int) ;
 int __IGB_DOWN ;
 int __IGB_TESTING ;
 int clear_bit (int ,int *) ;
 int igb_configure (struct igb_adapter*) ;
 int igb_free_all_rx_resources (struct igb_adapter*) ;
 int igb_free_all_tx_resources (struct igb_adapter*) ;
 int igb_free_irq (struct igb_adapter*) ;
 int igb_irq_enable (struct igb_adapter*) ;
 int igb_power_down_link (struct igb_adapter*) ;
 int igb_power_up_link (struct igb_adapter*) ;
 int igb_release_hw_control (struct igb_adapter*) ;
 int igb_request_irq (struct igb_adapter*) ;
 int igb_reset (struct igb_adapter*) ;
 int igb_setup_all_rx_resources (struct igb_adapter*) ;
 int igb_setup_all_tx_resources (struct igb_adapter*) ;
 int napi_enable (int *) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_set_real_num_rx_queues (int ,int ) ;
 int netif_set_real_num_tx_queues (int ,int ) ;
 int netif_tx_start_all_queues (struct net_device*) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put (int *) ;
 int rd32 (int ) ;
 int schedule_work (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wr32 (int ,int ) ;

__attribute__((used)) static int __igb_open(struct net_device *netdev, bool resuming)
{
 struct igb_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 struct pci_dev *pdev = adapter->pdev;
 int err;
 int i;


 if (test_bit(__IGB_TESTING, &adapter->state)) {
  WARN_ON(resuming);
  return -EBUSY;
 }

 if (!resuming)
  pm_runtime_get_sync(&pdev->dev);

 netif_carrier_off(netdev);


 err = igb_setup_all_tx_resources(adapter);
 if (err)
  goto err_setup_tx;


 err = igb_setup_all_rx_resources(adapter);
 if (err)
  goto err_setup_rx;

 igb_power_up_link(adapter);






 igb_configure(adapter);

 err = igb_request_irq(adapter);
 if (err)
  goto err_req_irq;


 err = netif_set_real_num_tx_queues(adapter->netdev,
        adapter->num_tx_queues);
 if (err)
  goto err_set_queues;

 err = netif_set_real_num_rx_queues(adapter->netdev,
        adapter->num_rx_queues);
 if (err)
  goto err_set_queues;


 clear_bit(__IGB_DOWN, &adapter->state);

 for (i = 0; i < adapter->num_q_vectors; i++)
  napi_enable(&(adapter->q_vector[i]->napi));


 rd32(E1000_TSICR);
 rd32(E1000_ICR);

 igb_irq_enable(adapter);


 if (adapter->vfs_allocated_count) {
  u32 reg_data = rd32(E1000_CTRL_EXT);

  reg_data |= E1000_CTRL_EXT_PFRSTD;
  wr32(E1000_CTRL_EXT, reg_data);
 }

 netif_tx_start_all_queues(netdev);

 if (!resuming)
  pm_runtime_put(&pdev->dev);


 hw->mac.get_link_status = 1;
 schedule_work(&adapter->watchdog_task);

 return 0;

err_set_queues:
 igb_free_irq(adapter);
err_req_irq:
 igb_release_hw_control(adapter);
 igb_power_down_link(adapter);
 igb_free_all_rx_resources(adapter);
err_setup_rx:
 igb_free_all_tx_resources(adapter);
err_setup_tx:
 igb_reset(adapter);
 if (!resuming)
  pm_runtime_put(&pdev->dev);

 return err;
}
