
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct asic_fixed_properties {scalar_t__ pcie_aux_dbi_reg_addr; } ;
struct hl_device {TYPE_1__* asic_funcs; struct asic_fixed_properties asic_prop; } ;
struct TYPE_2__ {scalar_t__ (* set_dram_bar_base ) (struct hl_device*,scalar_t__) ;} ;


 int EINVAL ;
 int EIO ;
 scalar_t__ U64_MAX ;
 int hl_pci_elbi_write (struct hl_device*,scalar_t__,int ) ;
 int hl_pci_iatu_write (struct hl_device*,int,int) ;
 int lower_32_bits (scalar_t__) ;
 scalar_t__ stub1 (struct hl_device*,scalar_t__) ;
 int upper_32_bits (scalar_t__) ;

int hl_pci_init_iatu(struct hl_device *hdev, u64 sram_base_address,
   u64 dram_base_address, u64 host_phys_base_address,
   u64 host_phys_size)
{
 struct asic_fixed_properties *prop = &hdev->asic_prop;
 u64 host_phys_end_addr;
 int rc = 0;


 rc = hl_pci_iatu_write(hdev, 0x114, lower_32_bits(sram_base_address));
 rc |= hl_pci_iatu_write(hdev, 0x118, upper_32_bits(sram_base_address));
 rc |= hl_pci_iatu_write(hdev, 0x100, 0);

 rc |= hl_pci_iatu_write(hdev, 0x104, 0xC0080000);


 if (!hdev->asic_funcs->set_dram_bar_base)
  return -EINVAL;
 if (hdev->asic_funcs->set_dram_bar_base(hdev, dram_base_address) ==
        U64_MAX)
  return -EIO;



 host_phys_end_addr = host_phys_base_address + host_phys_size - 1;
 rc |= hl_pci_iatu_write(hdev, 0x008,
    lower_32_bits(host_phys_base_address));
 rc |= hl_pci_iatu_write(hdev, 0x00C,
    upper_32_bits(host_phys_base_address));
 rc |= hl_pci_iatu_write(hdev, 0x010, lower_32_bits(host_phys_end_addr));
 rc |= hl_pci_iatu_write(hdev, 0x014, 0);
 rc |= hl_pci_iatu_write(hdev, 0x018, 0);
 rc |= hl_pci_iatu_write(hdev, 0x020, upper_32_bits(host_phys_end_addr));

 rc |= hl_pci_iatu_write(hdev, 0x000, 0x00002000);

 rc |= hl_pci_iatu_write(hdev, 0x004, 0x80000000);


 rc |= hl_pci_elbi_write(hdev, prop->pcie_aux_dbi_reg_addr, 0);
 rc |= hl_pci_elbi_write(hdev, prop->pcie_aux_dbi_reg_addr + 4, 0);

 if (rc)
  return -EIO;

 return 0;
}
