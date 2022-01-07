
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pci_dev {int dummy; } ;


 int NIC_NODE_ID_MASK ;
 int NIC_NODE_ID_SHIFT ;
 int PCI_CFG_REG_BAR_NUM ;
 int pci_resource_start (struct pci_dev*,int ) ;

__attribute__((used)) static inline int nic_get_node_id(struct pci_dev *pdev)
{
 u64 addr = pci_resource_start(pdev, PCI_CFG_REG_BAR_NUM);
 return ((addr >> NIC_NODE_ID_SHIFT) & NIC_NODE_ID_MASK);
}
