
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct hl_device {int dev; struct goya_device* asic_specific; } ;
struct goya_device {int hw_cap_initialized; } ;


 int HW_CAP_MMU ;
 int MMU_PAGE_ERROR_CAPTURE_ENTRY_VALID_MASK ;
 int MMU_PAGE_ERROR_CAPTURE_VA_49_32_MASK ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int dev_err (int ,char*,int) ;
 int mmMMU_PAGE_ERROR_CAPTURE ;
 int mmMMU_PAGE_ERROR_CAPTURE_VA ;

__attribute__((used)) static void goya_print_mmu_error_info(struct hl_device *hdev)
{
 struct goya_device *goya = hdev->asic_specific;
 u64 addr;
 u32 val;

 if (!(goya->hw_cap_initialized & HW_CAP_MMU))
  return;

 val = RREG32(mmMMU_PAGE_ERROR_CAPTURE);
 if (val & MMU_PAGE_ERROR_CAPTURE_ENTRY_VALID_MASK) {
  addr = val & MMU_PAGE_ERROR_CAPTURE_VA_49_32_MASK;
  addr <<= 32;
  addr |= RREG32(mmMMU_PAGE_ERROR_CAPTURE_VA);

  dev_err(hdev->dev, "MMU page fault on va 0x%llx\n", addr);

  WREG32(mmMMU_PAGE_ERROR_CAPTURE, 0);
 }
}
