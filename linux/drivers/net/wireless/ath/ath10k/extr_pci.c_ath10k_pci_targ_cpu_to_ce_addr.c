
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k_pci {int (* targ_cpu_to_ce_addr ) (struct ath10k*,int ) ;} ;
struct ath10k {int dummy; } ;


 int ENOTSUPP ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct ath10k_pci* ath10k_pci_priv (struct ath10k*) ;
 int stub1 (struct ath10k*,int ) ;

__attribute__((used)) static u32 ath10k_pci_targ_cpu_to_ce_addr(struct ath10k *ar, u32 addr)
{
 struct ath10k_pci *ar_pci = ath10k_pci_priv(ar);

 if (WARN_ON_ONCE(!ar_pci->targ_cpu_to_ce_addr))
  return -ENOTSUPP;

 return ar_pci->targ_cpu_to_ce_addr(ar, addr);
}
