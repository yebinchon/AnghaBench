
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct enetc_hw {int reg; } ;
struct enetc_si {struct enetc_hw hw; } ;


 int enetc_kfree_si (struct enetc_si*) ;
 int iounmap (int ) ;
 int pci_disable_device (struct pci_dev*) ;
 struct enetc_si* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_mem_regions (struct pci_dev*) ;

void enetc_pci_remove(struct pci_dev *pdev)
{
 struct enetc_si *si = pci_get_drvdata(pdev);
 struct enetc_hw *hw = &si->hw;

 iounmap(hw->reg);
 enetc_kfree_si(si);
 pci_release_mem_regions(pdev);
 pci_disable_device(pdev);
}
