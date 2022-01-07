
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct hl_ctx {TYPE_1__* hdev; int dram_phys_mem; } ;
struct asic_fixed_properties {int dram_end_address; int dram_user_base_address; int va_space_host_end_address; int va_space_host_start_address; int va_space_dram_end_address; int va_space_dram_start_address; } ;
struct TYPE_2__ {scalar_t__ mmu_enable; struct asic_fixed_properties asic_prop; } ;


 int atomic64_set (int *,int ) ;
 int hl_vm_ctx_init_with_ranges (struct hl_ctx*,int ,int ,int ,int ) ;

int hl_vm_ctx_init(struct hl_ctx *ctx)
{
 struct asic_fixed_properties *prop = &ctx->hdev->asic_prop;
 u64 host_range_start, host_range_end, dram_range_start,
  dram_range_end;

 atomic64_set(&ctx->dram_phys_mem, 0);
 if (ctx->hdev->mmu_enable) {
  dram_range_start = prop->va_space_dram_start_address;
  dram_range_end = prop->va_space_dram_end_address;
  host_range_start = prop->va_space_host_start_address;
  host_range_end = prop->va_space_host_end_address;
 } else {
  dram_range_start = prop->dram_user_base_address;
  dram_range_end = prop->dram_end_address;
  host_range_start = prop->dram_user_base_address;
  host_range_end = prop->dram_end_address;
 }

 return hl_vm_ctx_init_with_ranges(ctx, host_range_start, host_range_end,
   dram_range_start, dram_range_end);
}
