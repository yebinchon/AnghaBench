
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct atl1c_adapter {int hw; struct pci_dev* pdev; } ;
typedef int netdev_features_t ;


 int AT_READ_REG (int *,int ,int *) ;
 int AT_WRITE_REG (int *,int ,int ) ;
 int REG_MAC_CTRL ;
 int __atl1c_vlan_mode (int ,int *) ;
 int atl1c_irq_disable (struct atl1c_adapter*) ;
 int atl1c_irq_enable (struct atl1c_adapter*) ;
 int dev_dbg (int *,char*) ;
 struct atl1c_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_pktdata (struct atl1c_adapter*) ;

__attribute__((used)) static void atl1c_vlan_mode(struct net_device *netdev,
 netdev_features_t features)
{
 struct atl1c_adapter *adapter = netdev_priv(netdev);
 struct pci_dev *pdev = adapter->pdev;
 u32 mac_ctrl_data = 0;

 if (netif_msg_pktdata(adapter))
  dev_dbg(&pdev->dev, "atl1c_vlan_mode\n");

 atl1c_irq_disable(adapter);
 AT_READ_REG(&adapter->hw, REG_MAC_CTRL, &mac_ctrl_data);
 __atl1c_vlan_mode(features, &mac_ctrl_data);
 AT_WRITE_REG(&adapter->hw, REG_MAC_CTRL, mac_ctrl_data);
 atl1c_irq_enable(adapter);
}
