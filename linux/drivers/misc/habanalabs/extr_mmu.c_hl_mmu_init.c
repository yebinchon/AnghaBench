
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asic_fixed_properties {int mmu_hop_table_size; int max_asid; scalar_t__ mmu_hop0_tables_total_size; scalar_t__ mmu_pgt_size; scalar_t__ mmu_pgt_addr; } ;
struct hl_device {int mmu_pgt_pool; int mmu_shadow_hop0; int dev; int mmu_enable; struct asic_fixed_properties asic_prop; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int __GFP_ZERO ;
 int __ffs (int ) ;
 int dev_err (int ,char*) ;
 int gen_pool_add (int ,scalar_t__,scalar_t__,int) ;
 int gen_pool_create (int ,int) ;
 int gen_pool_destroy (int ) ;
 int kvmalloc_array (int ,int ,int) ;

int hl_mmu_init(struct hl_device *hdev)
{
 struct asic_fixed_properties *prop = &hdev->asic_prop;
 int rc;

 if (!hdev->mmu_enable)
  return 0;



 hdev->mmu_pgt_pool =
   gen_pool_create(__ffs(prop->mmu_hop_table_size), -1);

 if (!hdev->mmu_pgt_pool) {
  dev_err(hdev->dev, "Failed to create page gen pool\n");
  return -ENOMEM;
 }

 rc = gen_pool_add(hdev->mmu_pgt_pool, prop->mmu_pgt_addr +
   prop->mmu_hop0_tables_total_size,
   prop->mmu_pgt_size - prop->mmu_hop0_tables_total_size,
   -1);
 if (rc) {
  dev_err(hdev->dev, "Failed to add memory to page gen pool\n");
  goto err_pool_add;
 }

 hdev->mmu_shadow_hop0 = kvmalloc_array(prop->max_asid,
     prop->mmu_hop_table_size,
     GFP_KERNEL | __GFP_ZERO);
 if (!hdev->mmu_shadow_hop0) {
  rc = -ENOMEM;
  goto err_pool_add;
 }

 return 0;

err_pool_add:
 gen_pool_destroy(hdev->mmu_pgt_pool);

 return rc;
}
