
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int pci_dev; } ;


 int PCI_EXP_LNKCTL ;
 int PCI_EXP_LNKCTL_CLKREQ_EN ;
 int pcie_capability_clear_word (int ,int ,int ) ;

__attribute__((used)) static void rtl_disable_clock_request(struct rtl8169_private *tp)
{
 pcie_capability_clear_word(tp->pci_dev, PCI_EXP_LNKCTL,
       PCI_EXP_LNKCTL_CLKREQ_EN);
}
