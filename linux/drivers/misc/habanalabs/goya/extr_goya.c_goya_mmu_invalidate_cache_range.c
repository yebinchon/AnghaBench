
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct hl_device {int dev; int mmu_cache_lock; scalar_t__ pldm; struct goya_device* asic_specific; } ;
struct goya_device {int hw_cap_initialized; } ;


 int GOYA_PLDM_MMU_TIMEOUT_USEC ;
 int HW_CAP_MMU ;
 int MMU_CONFIG_TIMEOUT_USEC ;
 int RREG32 (int ) ;
 int STLB_CACHE_INV_INDEX_MASK_MASK ;
 int STLB_CACHE_INV_PRODUCER_INDEX_MASK ;
 int WREG32 (int ,int) ;
 int dev_notice_ratelimited (int ,char*) ;
 int hl_poll_timeout (struct hl_device*,int ,int,int,int,int) ;
 int mmSTLB_CACHE_INV ;
 int mmSTLB_INV_CONSUMER_INDEX ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void goya_mmu_invalidate_cache_range(struct hl_device *hdev,
  bool is_hard, u32 asid, u64 va, u64 size)
{
 struct goya_device *goya = hdev->asic_specific;
 u32 status, timeout_usec, inv_data, pi;
 int rc;

 if (!(goya->hw_cap_initialized & HW_CAP_MMU))
  return;


 if (!is_hard)
  return;

 if (hdev->pldm)
  timeout_usec = GOYA_PLDM_MMU_TIMEOUT_USEC;
 else
  timeout_usec = MMU_CONFIG_TIMEOUT_USEC;

 mutex_lock(&hdev->mmu_cache_lock);
 inv_data = RREG32(mmSTLB_CACHE_INV);

 pi = ((inv_data & STLB_CACHE_INV_PRODUCER_INDEX_MASK) + 1) & 0xFF;
 WREG32(mmSTLB_CACHE_INV,
   (inv_data & STLB_CACHE_INV_INDEX_MASK_MASK) | pi);

 rc = hl_poll_timeout(
  hdev,
  mmSTLB_INV_CONSUMER_INDEX,
  status,
  status == pi,
  1000,
  timeout_usec);

 mutex_unlock(&hdev->mmu_cache_lock);

 if (rc)
  dev_notice_ratelimited(hdev->dev,
   "Timeout when waiting for MMU cache invalidation\n");
}
