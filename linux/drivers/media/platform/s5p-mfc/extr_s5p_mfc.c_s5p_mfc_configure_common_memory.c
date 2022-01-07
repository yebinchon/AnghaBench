
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s5p_mfc_dev {unsigned int mem_base; unsigned long mem_size; unsigned int* dma_base; struct device** mem_dev; int mem_bitmap; int mem_virt; TYPE_1__* plat_dev; } ;
struct device {int dummy; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {struct device dev; } ;


 size_t BANK_L_CTX ;
 size_t BANK_R_CTX ;
 int BITS_TO_LONGS (unsigned long) ;
 int CONFIG_DMA_CMA ;
 int DMA_BIT_MASK (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ENABLED (int ) ;
 int MFC_BASE_ALIGN_ORDER ;
 unsigned long PAGE_SHIFT ;
 unsigned long SZ_1M ;
 unsigned long SZ_4M ;
 unsigned long SZ_8M ;
 int bitmap_set (int ,int ,unsigned int) ;
 int dev_err (struct device*,char*,unsigned long) ;
 int dev_info (struct device*,char*,unsigned long) ;
 int dma_alloc_coherent (struct device*,unsigned long,unsigned int*,int ) ;
 scalar_t__ exynos_is_iommu_available (struct device*) ;
 int kfree (int ) ;
 int kzalloc (unsigned int,int ) ;
 unsigned long memparse (scalar_t__,int *) ;
 scalar_t__ mfc_mem_size ;
 int s5p_mfc_alloc_firmware (struct s5p_mfc_dev*) ;
 int vb2_dma_contig_set_max_seg_size (struct device*,int ) ;

__attribute__((used)) static int s5p_mfc_configure_common_memory(struct s5p_mfc_dev *mfc_dev)
{
 struct device *dev = &mfc_dev->plat_dev->dev;
 unsigned long mem_size = SZ_4M;
 unsigned int bitmap_size;

 if (IS_ENABLED(CONFIG_DMA_CMA) || exynos_is_iommu_available(dev))
  mem_size = SZ_8M;

 if (mfc_mem_size)
  mem_size = memparse(mfc_mem_size, ((void*)0));

 bitmap_size = BITS_TO_LONGS(mem_size >> PAGE_SHIFT) * sizeof(long);

 mfc_dev->mem_bitmap = kzalloc(bitmap_size, GFP_KERNEL);
 if (!mfc_dev->mem_bitmap)
  return -ENOMEM;

 mfc_dev->mem_virt = dma_alloc_coherent(dev, mem_size,
            &mfc_dev->mem_base, GFP_KERNEL);
 if (!mfc_dev->mem_virt) {
  kfree(mfc_dev->mem_bitmap);
  dev_err(dev, "failed to preallocate %ld MiB for the firmware and context buffers\n",
   (mem_size / SZ_1M));
  return -ENOMEM;
 }
 mfc_dev->mem_size = mem_size;
 mfc_dev->dma_base[BANK_L_CTX] = mfc_dev->mem_base;
 mfc_dev->dma_base[BANK_R_CTX] = mfc_dev->mem_base;





 if (mfc_dev->mem_base == (dma_addr_t)0) {
  unsigned int offset = 1 << MFC_BASE_ALIGN_ORDER;

  bitmap_set(mfc_dev->mem_bitmap, 0, offset >> PAGE_SHIFT);
  mfc_dev->dma_base[BANK_L_CTX] += offset;
  mfc_dev->dma_base[BANK_R_CTX] += offset;
 }


 s5p_mfc_alloc_firmware(mfc_dev);

 mfc_dev->mem_dev[BANK_L_CTX] = mfc_dev->mem_dev[BANK_R_CTX] = dev;
 vb2_dma_contig_set_max_seg_size(dev, DMA_BIT_MASK(32));

 dev_info(dev, "preallocated %ld MiB buffer for the firmware and context buffers\n",
   (mem_size / SZ_1M));

 return 0;
}
