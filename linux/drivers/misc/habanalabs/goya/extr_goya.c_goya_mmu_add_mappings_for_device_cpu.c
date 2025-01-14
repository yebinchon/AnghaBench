
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asic_fixed_properties {scalar_t__ dram_base_address; } ;
struct hl_device {int cpu_accessible_dma_address; int dev; int kernel_ctx; struct goya_device* asic_specific; struct asic_fixed_properties asic_prop; } ;
struct goya_device {int hw_cap_initialized; int device_cpu_mmu_mappings_done; } ;
typedef scalar_t__ s64 ;


 scalar_t__ CPU_FW_IMAGE_SIZE ;
 int HL_KERNEL_ASID_ID ;
 int HW_CAP_MMU ;
 int PAGE_SIZE_2MB ;
 scalar_t__ PAGE_SIZE_4KB ;
 int RREG32 (int ) ;
 scalar_t__ SZ_2M ;
 scalar_t__ VA_CPU_ACCESSIBLE_MEM_ADDR ;
 int WREG32 (int ,int) ;
 int dev_err (int ,char*,...) ;
 int dev_warn_ratelimited (int ,char*,scalar_t__) ;
 int goya_mmu_prepare_reg (struct hl_device*,int ,int ) ;
 int hl_mmu_map (int ,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ hl_mmu_unmap (int ,scalar_t__,int) ;
 int mmCPU_IF_ARUSER_OVR ;
 int mmCPU_IF_ARUSER_OVR_EN ;
 int mmCPU_IF_AWUSER_OVR ;
 int mmCPU_IF_AWUSER_OVR_EN ;

__attribute__((used)) static int goya_mmu_add_mappings_for_device_cpu(struct hl_device *hdev)
{
 struct asic_fixed_properties *prop = &hdev->asic_prop;
 struct goya_device *goya = hdev->asic_specific;
 s64 off, cpu_off;
 int rc;

 if (!(goya->hw_cap_initialized & HW_CAP_MMU))
  return 0;

 for (off = 0 ; off < CPU_FW_IMAGE_SIZE ; off += PAGE_SIZE_2MB) {
  rc = hl_mmu_map(hdev->kernel_ctx, prop->dram_base_address + off,
    prop->dram_base_address + off, PAGE_SIZE_2MB);
  if (rc) {
   dev_err(hdev->dev, "Map failed for address 0x%llx\n",
    prop->dram_base_address + off);
   goto unmap;
  }
 }

 if (!(hdev->cpu_accessible_dma_address & (PAGE_SIZE_2MB - 1))) {
  rc = hl_mmu_map(hdev->kernel_ctx, VA_CPU_ACCESSIBLE_MEM_ADDR,
   hdev->cpu_accessible_dma_address, PAGE_SIZE_2MB);

  if (rc) {
   dev_err(hdev->dev,
    "Map failed for CPU accessible memory\n");
   off -= PAGE_SIZE_2MB;
   goto unmap;
  }
 } else {
  for (cpu_off = 0 ; cpu_off < SZ_2M ; cpu_off += PAGE_SIZE_4KB) {
   rc = hl_mmu_map(hdev->kernel_ctx,
    VA_CPU_ACCESSIBLE_MEM_ADDR + cpu_off,
    hdev->cpu_accessible_dma_address + cpu_off,
    PAGE_SIZE_4KB);
   if (rc) {
    dev_err(hdev->dev,
     "Map failed for CPU accessible memory\n");
    cpu_off -= PAGE_SIZE_4KB;
    goto unmap_cpu;
   }
  }
 }

 goya_mmu_prepare_reg(hdev, mmCPU_IF_ARUSER_OVR, HL_KERNEL_ASID_ID);
 goya_mmu_prepare_reg(hdev, mmCPU_IF_AWUSER_OVR, HL_KERNEL_ASID_ID);
 WREG32(mmCPU_IF_ARUSER_OVR_EN, 0x7FF);
 WREG32(mmCPU_IF_AWUSER_OVR_EN, 0x7FF);


 RREG32(mmCPU_IF_AWUSER_OVR_EN);

 goya->device_cpu_mmu_mappings_done = 1;

 return 0;

unmap_cpu:
 for (; cpu_off >= 0 ; cpu_off -= PAGE_SIZE_4KB)
  if (hl_mmu_unmap(hdev->kernel_ctx,
    VA_CPU_ACCESSIBLE_MEM_ADDR + cpu_off,
    PAGE_SIZE_4KB))
   dev_warn_ratelimited(hdev->dev,
    "failed to unmap address 0x%llx\n",
    VA_CPU_ACCESSIBLE_MEM_ADDR + cpu_off);
unmap:
 for (; off >= 0 ; off -= PAGE_SIZE_2MB)
  if (hl_mmu_unmap(hdev->kernel_ctx,
    prop->dram_base_address + off, PAGE_SIZE_2MB))
   dev_warn_ratelimited(hdev->dev,
    "failed to unmap address 0x%llx\n",
    prop->dram_base_address + off);

 return rc;
}
