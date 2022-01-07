
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hl_device {int dma_pool; int cpu_accessible_dma_address; int cpu_accessible_dma_mem; TYPE_1__* asic_funcs; int cpu_accessible_dma_pool; struct goya_device* asic_specific; } ;
struct goya_device {int dummy; } ;
struct TYPE_2__ {int (* asic_dma_free_coherent ) (struct hl_device*,int ,int ,int ) ;} ;


 int HL_CPU_ACCESSIBLE_MEM_SIZE ;
 int dma_pool_destroy (int ) ;
 int gen_pool_destroy (int ) ;
 int kfree (struct goya_device*) ;
 int stub1 (struct hl_device*,int ,int ,int ) ;

__attribute__((used)) static int goya_sw_fini(struct hl_device *hdev)
{
 struct goya_device *goya = hdev->asic_specific;

 gen_pool_destroy(hdev->cpu_accessible_dma_pool);

 hdev->asic_funcs->asic_dma_free_coherent(hdev,
   HL_CPU_ACCESSIBLE_MEM_SIZE,
   hdev->cpu_accessible_dma_mem,
   hdev->cpu_accessible_dma_address);

 dma_pool_destroy(hdev->dma_pool);

 kfree(goya);

 return 0;
}
