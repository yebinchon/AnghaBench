
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct hl_device {int dev; int mmu_enable; } ;
struct hl_ctx {struct hl_device* hdev; } ;


 int EFAULT ;
 int PAGE_SIZE_2MB ;
 int PAGE_SIZE_4KB ;
 int _hl_mmu_unmap (struct hl_ctx*,int) ;
 int dev_err (int ,char*,int) ;

int hl_mmu_unmap(struct hl_ctx *ctx, u64 virt_addr, u32 page_size)
{
 struct hl_device *hdev = ctx->hdev;
 u64 real_virt_addr;
 u32 real_page_size, npages;
 int i, rc;

 if (!hdev->mmu_enable)
  return 0;





 if ((page_size % PAGE_SIZE_2MB) == 0) {
  real_page_size = PAGE_SIZE_2MB;
 } else if ((page_size % PAGE_SIZE_4KB) == 0) {
  real_page_size = PAGE_SIZE_4KB;
 } else {
  dev_err(hdev->dev,
   "page size of %u is not 4KB nor 2MB aligned, can't unmap\n",
    page_size);

  return -EFAULT;
 }

 npages = page_size / real_page_size;
 real_virt_addr = virt_addr;

 for (i = 0 ; i < npages ; i++) {
  rc = _hl_mmu_unmap(ctx, real_virt_addr);
  if (rc)
   return rc;

  real_virt_addr += real_page_size;
 }

 return 0;
}
