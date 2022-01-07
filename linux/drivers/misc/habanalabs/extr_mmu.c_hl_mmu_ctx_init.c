
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int mmu_enable; } ;
struct hl_ctx {int mmu_shadow_hash; int mmu_phys_hash; int mmu_lock; struct hl_device* hdev; } ;


 int dram_default_mapping_init (struct hl_ctx*) ;
 int hash_init (int ) ;
 int mutex_init (int *) ;

int hl_mmu_ctx_init(struct hl_ctx *ctx)
{
 struct hl_device *hdev = ctx->hdev;

 if (!hdev->mmu_enable)
  return 0;

 mutex_init(&ctx->mmu_lock);
 hash_init(ctx->mmu_phys_hash);
 hash_init(ctx->mmu_shadow_hash);

 return dram_default_mapping_init(ctx);
}
