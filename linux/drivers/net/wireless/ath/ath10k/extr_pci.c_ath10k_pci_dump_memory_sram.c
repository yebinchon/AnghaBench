
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct ath10k_pci {scalar_t__ mem; } ;
struct ath10k_mem_region {scalar_t__ start; scalar_t__ len; } ;
struct ath10k {int dummy; } ;


 scalar_t__ QCA99X0_CPU_MEM_ADDR_REG ;
 scalar_t__ QCA99X0_CPU_MEM_DATA_REG ;
 scalar_t__ QCA99X0_PCIE_BAR0_START_REG ;
 struct ath10k_pci* ath10k_pci_priv (struct ath10k*) ;
 scalar_t__ ioread32 (scalar_t__) ;
 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static int ath10k_pci_dump_memory_sram(struct ath10k *ar,
           const struct ath10k_mem_region *region,
           u8 *buf)
{
 struct ath10k_pci *ar_pci = ath10k_pci_priv(ar);
 u32 base_addr, i;

 base_addr = ioread32(ar_pci->mem + QCA99X0_PCIE_BAR0_START_REG);
 base_addr += region->start;

 for (i = 0; i < region->len; i += 4) {
  iowrite32(base_addr + i, ar_pci->mem + QCA99X0_CPU_MEM_ADDR_REG);
  *(u32 *)(buf + i) = ioread32(ar_pci->mem + QCA99X0_CPU_MEM_DATA_REG);
 }

 return region->len;
}
