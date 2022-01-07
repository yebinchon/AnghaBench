
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int status; } ;
struct e1000_hw {TYPE_1__ mng_cookie; } ;
struct e1000_adapter {int napi; int flags; int mng_vlan_id; struct e1000_hw hw; } ;


 int E1000_ICS_LSC ;
 int E1000_MNG_DHCP_COOKIE_STATUS_VLAN_SUPPORT ;
 int E1000_MNG_VLAN_NONE ;
 int E1000_SUCCESS ;
 int EBUSY ;
 int ICS ;
 int __E1000_DOWN ;
 int __E1000_TESTING ;
 int clear_bit (int ,int *) ;
 int e1000_configure (struct e1000_adapter*) ;
 int e1000_free_all_rx_resources (struct e1000_adapter*) ;
 int e1000_free_all_tx_resources (struct e1000_adapter*) ;
 int e1000_irq_enable (struct e1000_adapter*) ;
 int e1000_power_down_phy (struct e1000_adapter*) ;
 int e1000_power_up_phy (struct e1000_adapter*) ;
 int e1000_request_irq (struct e1000_adapter*) ;
 int e1000_reset (struct e1000_adapter*) ;
 int e1000_setup_all_rx_resources (struct e1000_adapter*) ;
 int e1000_setup_all_tx_resources (struct e1000_adapter*) ;
 int e1000_update_mng_vlan (struct e1000_adapter*) ;
 int ew32 (int ,int ) ;
 int napi_enable (int *) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 scalar_t__ test_bit (int ,int *) ;

int e1000_open(struct net_device *netdev)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 int err;


 if (test_bit(__E1000_TESTING, &adapter->flags))
  return -EBUSY;

 netif_carrier_off(netdev);


 err = e1000_setup_all_tx_resources(adapter);
 if (err)
  goto err_setup_tx;


 err = e1000_setup_all_rx_resources(adapter);
 if (err)
  goto err_setup_rx;

 e1000_power_up_phy(adapter);

 adapter->mng_vlan_id = E1000_MNG_VLAN_NONE;
 if ((hw->mng_cookie.status &
     E1000_MNG_DHCP_COOKIE_STATUS_VLAN_SUPPORT)) {
  e1000_update_mng_vlan(adapter);
 }






 e1000_configure(adapter);

 err = e1000_request_irq(adapter);
 if (err)
  goto err_req_irq;


 clear_bit(__E1000_DOWN, &adapter->flags);

 napi_enable(&adapter->napi);

 e1000_irq_enable(adapter);

 netif_start_queue(netdev);


 ew32(ICS, E1000_ICS_LSC);

 return E1000_SUCCESS;

err_req_irq:
 e1000_power_down_phy(adapter);
 e1000_free_all_rx_resources(adapter);
err_setup_rx:
 e1000_free_all_tx_resources(adapter);
err_setup_tx:
 e1000_reset(adapter);

 return err;
}
