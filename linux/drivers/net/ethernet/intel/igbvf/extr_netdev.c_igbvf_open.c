
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {int get_link_status; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igbvf_adapter {int tx_ring; TYPE_2__* rx_ring; int watchdog_timer; int state; struct e1000_hw hw; } ;
struct TYPE_5__ {int napi; } ;


 int EBUSY ;
 int EICR ;
 int __IGBVF_DOWN ;
 int __IGBVF_TESTING ;
 int clear_bit (int ,int *) ;
 int er32 (int ) ;
 int igbvf_configure (struct igbvf_adapter*) ;
 int igbvf_free_rx_resources (TYPE_2__*) ;
 int igbvf_free_tx_resources (int ) ;
 int igbvf_irq_enable (struct igbvf_adapter*) ;
 int igbvf_request_irq (struct igbvf_adapter*) ;
 int igbvf_reset (struct igbvf_adapter*) ;
 int igbvf_setup_rx_resources (struct igbvf_adapter*,TYPE_2__*) ;
 int igbvf_setup_tx_resources (struct igbvf_adapter*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int napi_enable (int *) ;
 struct igbvf_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int igbvf_open(struct net_device *netdev)
{
 struct igbvf_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 int err;


 if (test_bit(__IGBVF_TESTING, &adapter->state))
  return -EBUSY;


 err = igbvf_setup_tx_resources(adapter, adapter->tx_ring);
 if (err)
  goto err_setup_tx;


 err = igbvf_setup_rx_resources(adapter, adapter->rx_ring);
 if (err)
  goto err_setup_rx;






 igbvf_configure(adapter);

 err = igbvf_request_irq(adapter);
 if (err)
  goto err_req_irq;


 clear_bit(__IGBVF_DOWN, &adapter->state);

 napi_enable(&adapter->rx_ring->napi);


 er32(EICR);

 igbvf_irq_enable(adapter);


 hw->mac.get_link_status = 1;
 mod_timer(&adapter->watchdog_timer, jiffies + 1);

 return 0;

err_req_irq:
 igbvf_free_rx_resources(adapter->rx_ring);
err_setup_rx:
 igbvf_free_tx_resources(adapter->tx_ring);
err_setup_tx:
 igbvf_reset(adapter);

 return err;
}
