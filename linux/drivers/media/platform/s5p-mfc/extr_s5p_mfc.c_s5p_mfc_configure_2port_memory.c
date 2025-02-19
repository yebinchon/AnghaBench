
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dma; } ;
struct s5p_mfc_dev {void** mem_dev; scalar_t__* dma_base; TYPE_2__ fw_buf; TYPE_1__* plat_dev; } ;
struct device {int dummy; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_3__ {struct device dev; } ;


 size_t BANK_L_CTX ;
 size_t BANK_R_CTX ;
 int DMA_BIT_MASK (int) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MFC_BASE_ALIGN_ORDER ;
 int device_unregister (void*) ;
 void* dma_alloc_coherent (void*,unsigned long,scalar_t__*,int ) ;
 int dma_free_coherent (void*,unsigned long,void*,scalar_t__) ;
 int mfc_err (char*) ;
 int s5p_mfc_alloc_firmware (struct s5p_mfc_dev*) ;
 void* s5p_mfc_alloc_memdev (struct device*,char*,size_t) ;
 int s5p_mfc_release_firmware (struct s5p_mfc_dev*) ;
 int vb2_dma_contig_set_max_seg_size (void*,int ) ;

__attribute__((used)) static int s5p_mfc_configure_2port_memory(struct s5p_mfc_dev *mfc_dev)
{
 struct device *dev = &mfc_dev->plat_dev->dev;
 void *bank2_virt;
 dma_addr_t bank2_dma_addr;
 unsigned long align_size = 1 << MFC_BASE_ALIGN_ORDER;
 int ret;





 mfc_dev->mem_dev[BANK_L_CTX] = s5p_mfc_alloc_memdev(dev, "left",
          BANK_L_CTX);
 if (!mfc_dev->mem_dev[BANK_L_CTX])
  return -ENODEV;
 mfc_dev->mem_dev[BANK_R_CTX] = s5p_mfc_alloc_memdev(dev, "right",
          BANK_R_CTX);
 if (!mfc_dev->mem_dev[BANK_R_CTX]) {
  device_unregister(mfc_dev->mem_dev[BANK_L_CTX]);
  return -ENODEV;
 }


 ret = s5p_mfc_alloc_firmware(mfc_dev);
 if (ret) {
  device_unregister(mfc_dev->mem_dev[BANK_R_CTX]);
  device_unregister(mfc_dev->mem_dev[BANK_L_CTX]);
  return ret;
 }

 mfc_dev->dma_base[BANK_L_CTX] = mfc_dev->fw_buf.dma;

 bank2_virt = dma_alloc_coherent(mfc_dev->mem_dev[BANK_R_CTX],
           align_size, &bank2_dma_addr, GFP_KERNEL);
 if (!bank2_virt) {
  mfc_err("Allocating bank2 base failed\n");
  s5p_mfc_release_firmware(mfc_dev);
  device_unregister(mfc_dev->mem_dev[BANK_R_CTX]);
  device_unregister(mfc_dev->mem_dev[BANK_L_CTX]);
  return -ENOMEM;
 }





 mfc_dev->dma_base[BANK_R_CTX] = bank2_dma_addr - align_size;

 dma_free_coherent(mfc_dev->mem_dev[BANK_R_CTX], align_size, bank2_virt,
     bank2_dma_addr);

 vb2_dma_contig_set_max_seg_size(mfc_dev->mem_dev[BANK_L_CTX],
     DMA_BIT_MASK(32));
 vb2_dma_contig_set_max_seg_size(mfc_dev->mem_dev[BANK_R_CTX],
     DMA_BIT_MASK(32));

 return 0;
}
