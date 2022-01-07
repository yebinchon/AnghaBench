
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {int get_link_status; } ;
struct igc_hw {TYPE_2__ mac; } ;
struct igc_adapter {int num_q_vectors; int watchdog_task; TYPE_1__** q_vector; int state; int num_rx_queues; int num_tx_queues; struct igc_hw hw; } ;
struct TYPE_3__ {int napi; } ;


 int EBUSY ;
 int IGC_ICR ;
 int IGC_SUCCESS ;
 int WARN_ON (int) ;
 int __IGC_DOWN ;
 int __IGC_TESTING ;
 int clear_bit (int ,int *) ;
 int igc_configure (struct igc_adapter*) ;
 int igc_free_all_rx_resources (struct igc_adapter*) ;
 int igc_free_all_tx_resources (struct igc_adapter*) ;
 int igc_free_irq (struct igc_adapter*) ;
 int igc_irq_enable (struct igc_adapter*) ;
 int igc_power_down_link (struct igc_adapter*) ;
 int igc_power_up_link (struct igc_adapter*) ;
 int igc_release_hw_control (struct igc_adapter*) ;
 int igc_request_irq (struct igc_adapter*) ;
 int igc_reset (struct igc_adapter*) ;
 int igc_setup_all_rx_resources (struct igc_adapter*) ;
 int igc_setup_all_tx_resources (struct igc_adapter*) ;
 int napi_enable (int *) ;
 struct igc_adapter* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_set_real_num_rx_queues (struct net_device*,int ) ;
 int netif_set_real_num_tx_queues (struct net_device*,int ) ;
 int netif_tx_start_all_queues (struct net_device*) ;
 int rd32 (int ) ;
 int schedule_work (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int __igc_open(struct net_device *netdev, bool resuming)
{
 struct igc_adapter *adapter = netdev_priv(netdev);
 struct igc_hw *hw = &adapter->hw;
 int err = 0;
 int i = 0;



 if (test_bit(__IGC_TESTING, &adapter->state)) {
  WARN_ON(resuming);
  return -EBUSY;
 }

 netif_carrier_off(netdev);


 err = igc_setup_all_tx_resources(adapter);
 if (err)
  goto err_setup_tx;


 err = igc_setup_all_rx_resources(adapter);
 if (err)
  goto err_setup_rx;

 igc_power_up_link(adapter);

 igc_configure(adapter);

 err = igc_request_irq(adapter);
 if (err)
  goto err_req_irq;


 err = netif_set_real_num_tx_queues(netdev, adapter->num_tx_queues);
 if (err)
  goto err_set_queues;

 err = netif_set_real_num_rx_queues(netdev, adapter->num_rx_queues);
 if (err)
  goto err_set_queues;

 clear_bit(__IGC_DOWN, &adapter->state);

 for (i = 0; i < adapter->num_q_vectors; i++)
  napi_enable(&adapter->q_vector[i]->napi);


 rd32(IGC_ICR);
 igc_irq_enable(adapter);

 netif_tx_start_all_queues(netdev);


 hw->mac.get_link_status = 1;
 schedule_work(&adapter->watchdog_task);

 return IGC_SUCCESS;

err_set_queues:
 igc_free_irq(adapter);
err_req_irq:
 igc_release_hw_control(adapter);
 igc_power_down_link(adapter);
 igc_free_all_rx_resources(adapter);
err_setup_rx:
 igc_free_all_tx_resources(adapter);
err_setup_tx:
 igc_reset(adapter);

 return err;
}
