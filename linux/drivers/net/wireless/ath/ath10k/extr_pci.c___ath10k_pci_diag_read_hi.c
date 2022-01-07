
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k {int dummy; } ;


 int ath10k_pci_diag_read32 (struct ath10k*,int ,int *) ;
 int ath10k_pci_diag_read_mem (struct ath10k*,int ,void*,int ) ;
 int ath10k_warn (struct ath10k*,char*,int ,int,...) ;
 int host_interest_item_address (int ) ;

__attribute__((used)) static int __ath10k_pci_diag_read_hi(struct ath10k *ar, void *dest,
         u32 src, u32 len)
{
 u32 host_addr, addr;
 int ret;

 host_addr = host_interest_item_address(src);

 ret = ath10k_pci_diag_read32(ar, host_addr, &addr);
 if (ret != 0) {
  ath10k_warn(ar, "failed to get memcpy hi address for firmware address %d: %d\n",
       src, ret);
  return ret;
 }

 ret = ath10k_pci_diag_read_mem(ar, addr, dest, len);
 if (ret != 0) {
  ath10k_warn(ar, "failed to memcpy firmware memory from %d (%d B): %d\n",
       addr, len, ret);
  return ret;
 }

 return 0;
}
