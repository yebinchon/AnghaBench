
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct cxl_sste {int dummy; } ;
struct cxl_context {int sstp0; int sstp1; struct cxl_sste* sstp; scalar_t__ sst_size; scalar_t__ sst_lru; } ;
struct TYPE_2__ {int sllp; } ;


 int CXL_SSTP0_An_B_SHIFT ;
 int CXL_SSTP0_An_SegTableSize_MASK ;
 int CXL_SSTP0_An_SegTableSize_SHIFT ;
 int CXL_SSTP1_An_V ;
 int EINVAL ;
 int ENOMEM ;
 int ESID_MASK ;
 int GFP_KERNEL ;
 scalar_t__ MMU_SEGSIZE_256M ;
 scalar_t__ PAGE_SIZE ;
 int SLB_VSID_KERNEL ;
 int WARN (int,char*) ;
 int get_kernel_vsid (int,scalar_t__) ;
 scalar_t__ get_zeroed_page (int ) ;
 scalar_t__ mmu_kernel_ssize ;
 size_t mmu_linear_psize ;
 TYPE_1__* mmu_psize_defs ;
 int pr_devel (char*,int,...) ;
 int pr_err (char*) ;
 scalar_t__ unlikely (int) ;

int cxl_alloc_sst(struct cxl_context *ctx)
{
 unsigned long vsid;
 u64 ea_mask, size, sstp0, sstp1;

 sstp0 = 0;
 sstp1 = 0;

 ctx->sst_size = PAGE_SIZE;
 ctx->sst_lru = 0;
 ctx->sstp = (struct cxl_sste *)get_zeroed_page(GFP_KERNEL);
 if (!ctx->sstp) {
  pr_err("cxl_alloc_sst: Unable to allocate segment table\n");
  return -ENOMEM;
 }
 pr_devel("SSTP allocated at 0x%p\n", ctx->sstp);

 vsid = get_kernel_vsid((u64)ctx->sstp, mmu_kernel_ssize) << 12;

 sstp0 |= (u64)mmu_kernel_ssize << CXL_SSTP0_An_B_SHIFT;
 sstp0 |= (SLB_VSID_KERNEL | mmu_psize_defs[mmu_linear_psize].sllp) << 50;

 size = (((u64)ctx->sst_size >> 8) - 1) << CXL_SSTP0_An_SegTableSize_SHIFT;
 if (unlikely(size & ~CXL_SSTP0_An_SegTableSize_MASK)) {
  WARN(1, "Impossible segment table size\n");
  return -EINVAL;
 }
 sstp0 |= size;

 if (mmu_kernel_ssize == MMU_SEGSIZE_256M)
  ea_mask = 0xfffff00ULL;
 else
  ea_mask = 0xffffffff00ULL;

 sstp0 |= vsid >> (50-14);
 sstp1 |= (vsid << (64-(50-14))) & ~ea_mask;
 sstp1 |= (u64)ctx->sstp & ea_mask;
 sstp1 |= CXL_SSTP1_An_V;

 pr_devel("Looked up %#llx: slbfee. %#llx (ssize: %x, vsid: %#lx), copied to SSTP0: %#llx, SSTP1: %#llx\n",
   (u64)ctx->sstp, (u64)ctx->sstp & ESID_MASK, mmu_kernel_ssize, vsid, sstp0, sstp1);


 ctx->sstp0 = sstp0;
 ctx->sstp1 = sstp1;

 return 0;
}
