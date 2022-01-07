
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hl_device {int dma_pool; int cpu_accessible_dma_address; scalar_t__ cpu_accessible_dma_mem; TYPE_2__* asic_funcs; int cpu_accessible_dma_pool; int dev; TYPE_1__* pdev; struct goya_device* asic_specific; } ;
struct goya_device {int hw_queues_lock; void* ic_clk; void* tpc_clk; void* mme_clk; int ddr_bar_cur_addr; } ;
struct TYPE_4__ {int (* asic_dma_free_coherent ) (struct hl_device*,int ,scalar_t__,int ) ;scalar_t__ (* asic_dma_alloc_coherent ) (struct hl_device*,int ,int *,int) ;} ;
struct TYPE_3__ {int dev; } ;


 int DRAM_PHYS_BASE ;
 int EFAULT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GOYA_DMA_POOL_BLK_SIZE ;
 void* GOYA_PLL_FREQ_LOW ;
 int HL_CPU_ACCESSIBLE_MEM_SIZE ;
 int __GFP_ZERO ;
 int dev_dbg (int ,char*,int *) ;
 int dev_err (int ,char*) ;
 int dev_name (int ) ;
 int dma_pool_create (int ,int *,int ,int,int ) ;
 int dma_pool_destroy (int ) ;
 int gen_pool_add (int ,uintptr_t,int ,int) ;
 int gen_pool_create (int ,int) ;
 int gen_pool_destroy (int ) ;
 int ilog2 (int) ;
 int kfree (struct goya_device*) ;
 struct goya_device* kzalloc (int,int) ;
 int spin_lock_init (int *) ;
 scalar_t__ stub1 (struct hl_device*,int ,int *,int) ;
 int stub2 (struct hl_device*,int ,scalar_t__,int ) ;

__attribute__((used)) static int goya_sw_init(struct hl_device *hdev)
{
 struct goya_device *goya;
 int rc;


 goya = kzalloc(sizeof(*goya), GFP_KERNEL);
 if (!goya)
  return -ENOMEM;


 goya->ddr_bar_cur_addr = DRAM_PHYS_BASE;

 goya->mme_clk = GOYA_PLL_FREQ_LOW;
 goya->tpc_clk = GOYA_PLL_FREQ_LOW;
 goya->ic_clk = GOYA_PLL_FREQ_LOW;

 hdev->asic_specific = goya;


 hdev->dma_pool = dma_pool_create(dev_name(hdev->dev),
   &hdev->pdev->dev, GOYA_DMA_POOL_BLK_SIZE, 8, 0);
 if (!hdev->dma_pool) {
  dev_err(hdev->dev, "failed to create DMA pool\n");
  rc = -ENOMEM;
  goto free_goya_device;
 }

 hdev->cpu_accessible_dma_mem =
   hdev->asic_funcs->asic_dma_alloc_coherent(hdev,
     HL_CPU_ACCESSIBLE_MEM_SIZE,
     &hdev->cpu_accessible_dma_address,
     GFP_KERNEL | __GFP_ZERO);

 if (!hdev->cpu_accessible_dma_mem) {
  rc = -ENOMEM;
  goto free_dma_pool;
 }

 dev_dbg(hdev->dev, "cpu accessible memory at bus address %pad\n",
  &hdev->cpu_accessible_dma_address);

 hdev->cpu_accessible_dma_pool = gen_pool_create(ilog2(32), -1);
 if (!hdev->cpu_accessible_dma_pool) {
  dev_err(hdev->dev,
   "Failed to create CPU accessible DMA pool\n");
  rc = -ENOMEM;
  goto free_cpu_dma_mem;
 }

 rc = gen_pool_add(hdev->cpu_accessible_dma_pool,
    (uintptr_t) hdev->cpu_accessible_dma_mem,
    HL_CPU_ACCESSIBLE_MEM_SIZE, -1);
 if (rc) {
  dev_err(hdev->dev,
   "Failed to add memory to CPU accessible DMA pool\n");
  rc = -EFAULT;
  goto free_cpu_accessible_dma_pool;
 }

 spin_lock_init(&goya->hw_queues_lock);

 return 0;

free_cpu_accessible_dma_pool:
 gen_pool_destroy(hdev->cpu_accessible_dma_pool);
free_cpu_dma_mem:
 hdev->asic_funcs->asic_dma_free_coherent(hdev,
   HL_CPU_ACCESSIBLE_MEM_SIZE,
   hdev->cpu_accessible_dma_mem,
   hdev->cpu_accessible_dma_address);
free_dma_pool:
 dma_pool_destroy(hdev->dma_pool);
free_goya_device:
 kfree(goya);

 return rc;
}
