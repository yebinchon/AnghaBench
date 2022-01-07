
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int aspm_en; scalar_t__ pcie_cap; } ;


 scalar_t__ PCI_EXP_LNKCTL ;
 int rtsx_pci_update_cfg_byte (struct rtsx_pcr*,scalar_t__,int,int ) ;

__attribute__((used)) static inline void rtsx_pci_enable_aspm(struct rtsx_pcr *pcr)
{
 rtsx_pci_update_cfg_byte(pcr, pcr->pcie_cap + PCI_EXP_LNKCTL,
  0xFC, pcr->aspm_en);
}
