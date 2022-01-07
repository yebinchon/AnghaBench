
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct net_device {int mtu; } ;
struct igc_adapter {int max_frame_size; int state; struct pci_dev* pdev; } ;


 int ETH_FCS_LEN ;
 int ETH_FRAME_LEN ;
 int ETH_HLEN ;
 int VLAN_HLEN ;
 int __IGC_RESETTING ;
 int clear_bit (int ,int *) ;
 int dev_info (int *,char*,int,int) ;
 int igc_down (struct igc_adapter*) ;
 int igc_reset (struct igc_adapter*) ;
 int igc_up (struct igc_adapter*) ;
 struct igc_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int igc_change_mtu(struct net_device *netdev, int new_mtu)
{
 int max_frame = new_mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;
 struct igc_adapter *adapter = netdev_priv(netdev);
 struct pci_dev *pdev = adapter->pdev;


 if (max_frame < (ETH_FRAME_LEN + ETH_FCS_LEN))
  max_frame = ETH_FRAME_LEN + ETH_FCS_LEN;

 while (test_and_set_bit(__IGC_RESETTING, &adapter->state))
  usleep_range(1000, 2000);


 adapter->max_frame_size = max_frame;

 if (netif_running(netdev))
  igc_down(adapter);

 dev_info(&pdev->dev, "changing MTU from %d to %d\n",
   netdev->mtu, new_mtu);
 netdev->mtu = new_mtu;

 if (netif_running(netdev))
  igc_up(adapter);
 else
  igc_reset(adapter);

 clear_bit(__IGC_RESETTING, &adapter->state);

 return 0;
}
