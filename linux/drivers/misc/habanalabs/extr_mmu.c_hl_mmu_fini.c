
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int mmu_pgt_pool; int mmu_shadow_hop0; int mmu_enable; } ;


 int gen_pool_destroy (int ) ;
 int kvfree (int ) ;

void hl_mmu_fini(struct hl_device *hdev)
{
 if (!hdev->mmu_enable)
  return;

 kvfree(hdev->mmu_shadow_hop0);
 gen_pool_destroy(hdev->mmu_pgt_pool);


}
