
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct asic_fixed_properties {int max_asid; int mmu_hop_table_size; scalar_t__ mmu_pgt_addr; } ;
struct hl_device {int dram_supports_virtual_memory; int dram_default_page_mapping; TYPE_1__* asic_funcs; int dev; int mmu_enable; struct goya_device* asic_specific; struct asic_fixed_properties asic_prop; } ;
struct goya_device {int hw_cap_initialized; } ;
struct TYPE_2__ {int (* mmu_invalidate_cache ) (struct hl_device*,int) ;} ;


 int HW_CAP_MMU ;
 int MMU_CACHE_MNG_ADDR ;
 int STLB_STLB_FEATURE_EN_FOLLOWER_EN_MASK ;
 int WREG32 (int ,int) ;
 int WREG32_AND (int ,int ) ;
 int dev_err (int ,char*,int) ;
 int goya_mmu_update_asid_hop0_addr (struct hl_device*,int,scalar_t__) ;
 int lower_32_bits (int) ;
 int mmMMU_MMU_ENABLE ;
 int mmMMU_SPI_MASK ;
 int mmSTLB_CACHE_INV_BASE_39_8 ;
 int mmSTLB_CACHE_INV_BASE_49_40 ;
 int mmSTLB_STLB_FEATURE_EN ;
 int stub1 (struct hl_device*,int) ;

int goya_mmu_init(struct hl_device *hdev)
{
 struct asic_fixed_properties *prop = &hdev->asic_prop;
 struct goya_device *goya = hdev->asic_specific;
 u64 hop0_addr;
 int rc, i;

 if (!hdev->mmu_enable)
  return 0;

 if (goya->hw_cap_initialized & HW_CAP_MMU)
  return 0;

 hdev->dram_supports_virtual_memory = 1;
 hdev->dram_default_page_mapping = 1;

 for (i = 0 ; i < prop->max_asid ; i++) {
  hop0_addr = prop->mmu_pgt_addr +
    (i * prop->mmu_hop_table_size);

  rc = goya_mmu_update_asid_hop0_addr(hdev, i, hop0_addr);
  if (rc) {
   dev_err(hdev->dev,
    "failed to set hop0 addr for asid %d\n", i);
   goto err;
  }
 }

 goya->hw_cap_initialized |= HW_CAP_MMU;


 WREG32(mmSTLB_CACHE_INV_BASE_39_8,
    lower_32_bits(MMU_CACHE_MNG_ADDR >> 8));
 WREG32(mmSTLB_CACHE_INV_BASE_49_40, MMU_CACHE_MNG_ADDR >> 40);


 WREG32_AND(mmSTLB_STLB_FEATURE_EN,
   (~STLB_STLB_FEATURE_EN_FOLLOWER_EN_MASK));

 hdev->asic_funcs->mmu_invalidate_cache(hdev, 1);

 WREG32(mmMMU_MMU_ENABLE, 1);
 WREG32(mmMMU_SPI_MASK, 0xF);

 return 0;

err:
 return rc;
}
