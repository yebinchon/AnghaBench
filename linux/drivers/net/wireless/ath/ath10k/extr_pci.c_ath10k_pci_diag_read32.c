
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int u32 ;
struct ath10k {int dummy; } ;
typedef int __le32 ;


 int __le32_to_cpu (int ) ;
 int ath10k_pci_diag_read_mem (struct ath10k*,int ,int *,int) ;

__attribute__((used)) static int ath10k_pci_diag_read32(struct ath10k *ar, u32 address, u32 *value)
{
 __le32 val = 0;
 int ret;

 ret = ath10k_pci_diag_read_mem(ar, address, &val, sizeof(val));
 *value = __le32_to_cpu(val);

 return ret;
}
