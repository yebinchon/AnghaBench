
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rtl8169_private {int pci_dev; } ;


 int PCI_EXP_DEVCTL ;
 int PCI_EXP_DEVCTL_READRQ ;
 int pcie_capability_clear_and_set_word (int ,int ,int ,int ) ;

__attribute__((used)) static void rtl_tx_performance_tweak(struct rtl8169_private *tp, u16 force)
{
 pcie_capability_clear_and_set_word(tp->pci_dev, PCI_EXP_DEVCTL,
        PCI_EXP_DEVCTL_READRQ, force);
}
