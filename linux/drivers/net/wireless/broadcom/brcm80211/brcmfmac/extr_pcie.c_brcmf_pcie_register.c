
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCIE ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_err (int *,char*,int) ;
 int brcmf_pciedrvr ;
 int pci_register_driver (int *) ;

void brcmf_pcie_register(void)
{
 int err;

 brcmf_dbg(PCIE, "Enter\n");
 err = pci_register_driver(&brcmf_pciedrvr);
 if (err)
  brcmf_err(((void*)0), "PCIE driver registration failed, err=%d\n",
     err);
}
