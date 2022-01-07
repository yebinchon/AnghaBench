
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct net_device {int dev_addr; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igbvf_adapter {struct pci_dev* pdev; struct net_device* netdev; struct e1000_hw hw; } ;


 int dev_info (int *,char*,...) ;
 scalar_t__ e1000_vfadapt_i350 ;

__attribute__((used)) static void igbvf_print_device_info(struct igbvf_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 struct net_device *netdev = adapter->netdev;
 struct pci_dev *pdev = adapter->pdev;

 if (hw->mac.type == e1000_vfadapt_i350)
  dev_info(&pdev->dev, "Intel(R) I350 Virtual Function\n");
 else
  dev_info(&pdev->dev, "Intel(R) 82576 Virtual Function\n");
 dev_info(&pdev->dev, "Address: %pM\n", netdev->dev_addr);
}
