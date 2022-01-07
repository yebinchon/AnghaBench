
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct pgt_info {int node; scalar_t__ num_of_ptes; struct hl_ctx* ctx; void* shadow_addr; void* phys_addr; } ;
struct asic_fixed_properties {int mmu_hop_table_size; } ;
struct hl_device {int mmu_pgt_pool; int dev; struct asic_fixed_properties asic_prop; } ;
struct hl_ctx {int mmu_shadow_hash; struct hl_device* hdev; } ;


 int GFP_KERNEL ;
 void* ULLONG_MAX ;
 int dev_err (int ,char*) ;
 scalar_t__ gen_pool_alloc (int ,int ) ;
 int gen_pool_free (int ,void*,int ) ;
 int hash_add (int ,int *,void*) ;
 int kfree (struct pgt_info*) ;
 struct pgt_info* kmalloc (int,int ) ;
 scalar_t__ kzalloc (int ,int ) ;

__attribute__((used)) static u64 alloc_hop(struct hl_ctx *ctx)
{
 struct hl_device *hdev = ctx->hdev;
 struct asic_fixed_properties *prop = &hdev->asic_prop;
 struct pgt_info *pgt_info;
 u64 phys_addr, shadow_addr;

 pgt_info = kmalloc(sizeof(*pgt_info), GFP_KERNEL);
 if (!pgt_info)
  return ULLONG_MAX;

 phys_addr = (u64) gen_pool_alloc(hdev->mmu_pgt_pool,
     prop->mmu_hop_table_size);
 if (!phys_addr) {
  dev_err(hdev->dev, "failed to allocate page\n");
  goto pool_add_err;
 }

 shadow_addr = (u64) (uintptr_t) kzalloc(prop->mmu_hop_table_size,
      GFP_KERNEL);
 if (!shadow_addr)
  goto shadow_err;

 pgt_info->phys_addr = phys_addr;
 pgt_info->shadow_addr = shadow_addr;
 pgt_info->ctx = ctx;
 pgt_info->num_of_ptes = 0;
 hash_add(ctx->mmu_shadow_hash, &pgt_info->node, shadow_addr);

 return shadow_addr;

shadow_err:
 gen_pool_free(hdev->mmu_pgt_pool, phys_addr, prop->mmu_hop_table_size);
pool_add_err:
 kfree(pgt_info);

 return ULLONG_MAX;
}
