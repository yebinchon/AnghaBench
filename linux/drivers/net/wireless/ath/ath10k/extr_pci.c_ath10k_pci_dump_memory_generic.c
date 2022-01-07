
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ size; } ;
struct ath10k_mem_region {int len; int name; int start; TYPE_1__ section_table; } ;
struct ath10k {int dummy; } ;


 int ath10k_pci_diag_read_mem (struct ath10k*,int ,int *,int) ;
 int ath10k_pci_dump_memory_section (struct ath10k*,struct ath10k_mem_region const*,int *,int) ;
 int ath10k_warn (struct ath10k*,char*,int ,int) ;

__attribute__((used)) static int ath10k_pci_dump_memory_generic(struct ath10k *ar,
       const struct ath10k_mem_region *current_region,
       u8 *buf)
{
 int ret;

 if (current_region->section_table.size > 0)

  return ath10k_pci_dump_memory_section(ar,
            current_region,
            buf,
            current_region->len);




 ret = ath10k_pci_diag_read_mem(ar,
           current_region->start,
           buf,
           current_region->len);
 if (ret) {
  ath10k_warn(ar, "failed to copy ramdump region %s: %d\n",
       current_region->name, ret);
  return ret;
 }

 return current_region->len;
}
