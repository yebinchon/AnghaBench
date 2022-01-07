
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_priv_buf {unsigned int dma; unsigned int size; size_t ctx; int * virt; } ;
struct s5p_mfc_dev {unsigned int mem_base; struct device** mem_dev; int mem_bitmap; scalar_t__ mem_virt; } ;
struct device {int dummy; } ;


 unsigned int PAGE_SHIFT ;
 int bitmap_clear (int ,unsigned int,unsigned int) ;
 int dma_free_coherent (struct device*,unsigned int,int *,unsigned int) ;

void s5p_mfc_release_priv_buf(struct s5p_mfc_dev *dev,
         struct s5p_mfc_priv_buf *b)
{
 if (dev->mem_virt) {
  unsigned int start = (b->dma - dev->mem_base) >> PAGE_SHIFT;
  unsigned int count = b->size >> PAGE_SHIFT;

  bitmap_clear(dev->mem_bitmap, start, count);
 } else {
  struct device *mem_dev = dev->mem_dev[b->ctx];

  dma_free_coherent(mem_dev, b->size, b->virt, b->dma);
 }
 b->virt = ((void*)0);
 b->dma = 0;
 b->size = 0;
}
