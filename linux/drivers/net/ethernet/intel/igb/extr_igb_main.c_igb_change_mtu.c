
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct net_device {int mtu; } ;
struct igb_adapter {int max_frame_size; int state; struct pci_dev* pdev; } ;


 int ETH_FCS_LEN ;
 int ETH_FRAME_LEN ;
 int ETH_HLEN ;
 int VLAN_HLEN ;
 int __IGB_RESETTING ;
 int clear_bit (int ,int *) ;
 int dev_info (int *,char*,int,int) ;
 int igb_down (struct igb_adapter*) ;
 int igb_reset (struct igb_adapter*) ;
 int igb_up (struct igb_adapter*) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int igb_change_mtu(struct net_device *netdev, int new_mtu)
{
 struct igb_adapter *adapter = netdev_priv(netdev);
 struct pci_dev *pdev = adapter->pdev;
 int max_frame = new_mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;


 if (max_frame < (ETH_FRAME_LEN + ETH_FCS_LEN))
  max_frame = ETH_FRAME_LEN + ETH_FCS_LEN;

 while (test_and_set_bit(__IGB_RESETTING, &adapter->state))
  usleep_range(1000, 2000);


 adapter->max_frame_size = max_frame;

 if (netif_running(netdev))
  igb_down(adapter);

 dev_info(&pdev->dev, "changing MTU from %d to %d\n",
   netdev->mtu, new_mtu);
 netdev->mtu = new_mtu;

 if (netif_running(netdev))
  igb_up(adapter);
 else
  igb_reset(adapter);

 clear_bit(__IGB_RESETTING, &adapter->state);

 return 0;
}
