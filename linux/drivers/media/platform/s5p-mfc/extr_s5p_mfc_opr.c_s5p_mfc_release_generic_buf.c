
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_priv_buf {size_t ctx; int size; int dma; int * virt; } ;
struct s5p_mfc_dev {struct device** mem_dev; } ;
struct device {int dummy; } ;


 int dma_free_coherent (struct device*,int ,int *,int ) ;

void s5p_mfc_release_generic_buf(struct s5p_mfc_dev *dev,
         struct s5p_mfc_priv_buf *b)
{
 struct device *mem_dev = dev->mem_dev[b->ctx];
 dma_free_coherent(mem_dev, b->size, b->virt, b->dma);
 b->virt = ((void*)0);
 b->dma = 0;
 b->size = 0;
}
