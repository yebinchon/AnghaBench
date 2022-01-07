
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s5p_mfc_dev {int mem_bitmap; int mem_base; int mem_virt; int mem_size; TYPE_1__* plat_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int dma_free_coherent (struct device*,int ,int ,int ) ;
 int kfree (int ) ;
 int vb2_dma_contig_clear_max_seg_size (struct device*) ;

__attribute__((used)) static void s5p_mfc_unconfigure_common_memory(struct s5p_mfc_dev *mfc_dev)
{
 struct device *dev = &mfc_dev->plat_dev->dev;

 dma_free_coherent(dev, mfc_dev->mem_size, mfc_dev->mem_virt,
     mfc_dev->mem_base);
 kfree(mfc_dev->mem_bitmap);
 vb2_dma_contig_clear_max_seg_size(dev);
}
