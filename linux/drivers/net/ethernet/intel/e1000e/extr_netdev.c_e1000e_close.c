
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int status; } ;
struct TYPE_6__ {TYPE_2__ mng_cookie; } ;
struct e1000_adapter {int flags; int pm_qos_req; int state; int mng_vlan_id; TYPE_3__ hw; int rx_ring; int tx_ring; int napi; TYPE_1__* netdev; struct pci_dev* pdev; } ;
struct TYPE_4__ {int name; } ;


 int E1000_CHECK_RESET_COUNT ;
 int E1000_MNG_DHCP_COOKIE_STATUS_VLAN ;
 int ETH_P_8021Q ;
 int FLAG_HAS_AMT ;
 int WARN_ON (scalar_t__) ;
 int __E1000_DOWN ;
 int __E1000_RESETTING ;
 int __E1000_TESTING ;
 int e1000_free_irq (struct e1000_adapter*) ;
 int e1000_vlan_rx_kill_vid (struct net_device*,int ,int ) ;
 int e1000e_down (struct e1000_adapter*,int) ;
 int e1000e_free_rx_resources (int ) ;
 int e1000e_free_tx_resources (int ) ;
 int e1000e_release_hw_control (struct e1000_adapter*) ;
 int htons (int ) ;
 int napi_disable (int *) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 int pm_qos_remove_request (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_sync (int *) ;
 int pr_info (char*,int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int usleep_range (int,int) ;

int e1000e_close(struct net_device *netdev)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct pci_dev *pdev = adapter->pdev;
 int count = E1000_CHECK_RESET_COUNT;

 while (test_bit(__E1000_RESETTING, &adapter->state) && count--)
  usleep_range(10000, 11000);

 WARN_ON(test_bit(__E1000_RESETTING, &adapter->state));

 pm_runtime_get_sync(&pdev->dev);

 if (!test_bit(__E1000_DOWN, &adapter->state)) {
  e1000e_down(adapter, 1);
  e1000_free_irq(adapter);


  pr_info("%s NIC Link is Down\n", adapter->netdev->name);
 }

 napi_disable(&adapter->napi);

 e1000e_free_tx_resources(adapter->tx_ring);
 e1000e_free_rx_resources(adapter->rx_ring);




 if (adapter->hw.mng_cookie.status & E1000_MNG_DHCP_COOKIE_STATUS_VLAN)
  e1000_vlan_rx_kill_vid(netdev, htons(ETH_P_8021Q),
           adapter->mng_vlan_id);




 if ((adapter->flags & FLAG_HAS_AMT) &&
     !test_bit(__E1000_TESTING, &adapter->state))
  e1000e_release_hw_control(adapter);

 pm_qos_remove_request(&adapter->pm_qos_req);

 pm_runtime_put_sync(&pdev->dev);

 return 0;
}
