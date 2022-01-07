
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;
struct ath10k_pci {struct pci_dev* pdev; } ;
struct ath10k {int dummy; } ;


 int ath10k_err (struct ath10k*,char*,int) ;
 int ath10k_pci_force_wake (struct ath10k*) ;
 struct ath10k_pci* ath10k_pci_priv (struct ath10k*) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;

__attribute__((used)) static int ath10k_pci_resume(struct ath10k *ar)
{
 struct ath10k_pci *ar_pci = ath10k_pci_priv(ar);
 struct pci_dev *pdev = ar_pci->pdev;
 u32 val;
 int ret = 0;

 ret = ath10k_pci_force_wake(ar);
 if (ret) {
  ath10k_err(ar, "failed to wake up target: %d\n", ret);
  return ret;
 }






 pci_read_config_dword(pdev, 0x40, &val);
 if ((val & 0x0000ff00) != 0)
  pci_write_config_dword(pdev, 0x40, val & 0xffff00ff);

 return ret;
}
