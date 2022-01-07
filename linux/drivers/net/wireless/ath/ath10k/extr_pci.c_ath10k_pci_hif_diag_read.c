
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k {int dummy; } ;


 int ath10k_pci_diag_read_mem (struct ath10k*,int ,void*,size_t) ;

int ath10k_pci_hif_diag_read(struct ath10k *ar, u32 address, void *buf,
        size_t buf_len)
{
 return ath10k_pci_diag_read_mem(ar, address, buf, buf_len);
}
