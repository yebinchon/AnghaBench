
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCIE ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_pciedrvr ;
 int pci_unregister_driver (int *) ;

void brcmf_pcie_exit(void)
{
 brcmf_dbg(PCIE, "Enter\n");
 pci_unregister_driver(&brcmf_pciedrvr);
}
