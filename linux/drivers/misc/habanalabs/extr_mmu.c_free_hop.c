
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pgt_info {scalar_t__ shadow_addr; int node; int phys_addr; } ;
typedef struct pgt_info u64 ;
struct TYPE_2__ {int mmu_hop_table_size; } ;
struct hl_device {TYPE_1__ asic_prop; int mmu_pgt_pool; } ;
struct hl_ctx {struct hl_device* hdev; } ;


 int gen_pool_free (int ,int ,int ) ;
 struct pgt_info* get_pgt_info (struct hl_ctx*,struct pgt_info) ;
 int hash_del (int *) ;
 int kfree (struct pgt_info*) ;

__attribute__((used)) static void free_hop(struct hl_ctx *ctx, u64 hop_addr)
{
 struct hl_device *hdev = ctx->hdev;
 struct pgt_info *pgt_info = get_pgt_info(ctx, hop_addr);

 gen_pool_free(hdev->mmu_pgt_pool, pgt_info->phys_addr,
   hdev->asic_prop.mmu_hop_table_size);
 hash_del(&pgt_info->node);
 kfree((u64 *) (uintptr_t) pgt_info->shadow_addr);
 kfree(pgt_info);
}
