
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 unsigned int AMD_FIFO_PTR ;
 int AMD_SD_MISC_CONTROL ;
 int pci_read_config_dword (struct pci_dev*,int ,unsigned int*) ;
 int pci_write_config_dword (struct pci_dev*,int ,unsigned int) ;

__attribute__((used)) static void amd_enable_manual_tuning(struct pci_dev *pdev)
{
 unsigned int val;

 pci_read_config_dword(pdev, AMD_SD_MISC_CONTROL, &val);
 val |= AMD_FIFO_PTR;
 pci_write_config_dword(pdev, AMD_SD_MISC_CONTROL, val);
}
