
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct pci_dev {int dummy; } ;
struct pci_bus {struct pci_dev* self; } ;
struct ixgbe_adapter {int hw; TYPE_2__* pdev; } ;
struct TYPE_4__ {TYPE_1__* bus; } ;
struct TYPE_3__ {struct pci_bus* parent; } ;


 scalar_t__ IXGBE_FAILED_READ_CFG_WORD ;
 scalar_t__ ixgbe_check_cfg_remove (int *,struct pci_dev*) ;
 int pci_is_pcie (struct pci_dev*) ;
 int pcie_capability_read_word (struct pci_dev*,int ,scalar_t__*) ;

__attribute__((used)) static int ixgbe_read_pci_cfg_word_parent(struct ixgbe_adapter *adapter,
       u32 reg, u16 *value)
{
 struct pci_dev *parent_dev;
 struct pci_bus *parent_bus;

 parent_bus = adapter->pdev->bus->parent;
 if (!parent_bus)
  return -1;

 parent_dev = parent_bus->self;
 if (!parent_dev)
  return -1;

 if (!pci_is_pcie(parent_dev))
  return -1;

 pcie_capability_read_word(parent_dev, reg, value);
 if (*value == IXGBE_FAILED_READ_CFG_WORD &&
     ixgbe_check_cfg_remove(&adapter->hw, parent_dev))
  return -1;
 return 0;
}
