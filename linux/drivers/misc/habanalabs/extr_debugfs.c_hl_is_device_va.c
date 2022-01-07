
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct asic_fixed_properties {scalar_t__ va_space_dram_start_address; scalar_t__ va_space_dram_end_address; scalar_t__ va_space_host_start_address; scalar_t__ va_space_host_end_address; } ;
struct hl_device {scalar_t__ dram_supports_virtual_memory; int mmu_enable; struct asic_fixed_properties asic_prop; } ;



__attribute__((used)) static bool hl_is_device_va(struct hl_device *hdev, u64 addr)
{
 struct asic_fixed_properties *prop = &hdev->asic_prop;

 if (!hdev->mmu_enable)
  goto out;

 if (hdev->dram_supports_virtual_memory &&
   addr >= prop->va_space_dram_start_address &&
   addr < prop->va_space_dram_end_address)
  return 1;

 if (addr >= prop->va_space_host_start_address &&
   addr < prop->va_space_host_end_address)
  return 1;
out:
 return 0;
}
