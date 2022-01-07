
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dev {TYPE_3__* bus; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ bus; } ;
struct ixgbe_adapter {struct pci_dev* pdev; struct ixgbe_hw hw; } ;
struct TYPE_6__ {TYPE_2__* parent; } ;
struct TYPE_5__ {struct pci_dev* self; } ;


 scalar_t__ ixgbe_bus_type_internal ;
 scalar_t__ ixgbe_pcie_from_parent (struct ixgbe_hw*) ;
 int pcie_print_link_status (struct pci_dev*) ;

__attribute__((used)) static void ixgbe_check_minimum_link(struct ixgbe_adapter *adapter,
         int expected_gts)
{
 struct ixgbe_hw *hw = &adapter->hw;
 struct pci_dev *pdev;





 if (hw->bus.type == ixgbe_bus_type_internal)
  return;


 if (ixgbe_pcie_from_parent(&adapter->hw))
  pdev = adapter->pdev->bus->parent->self;
 else
  pdev = adapter->pdev;

 pcie_print_link_status(pdev);
}
