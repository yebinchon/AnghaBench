
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_priv_buf {unsigned int ctx; int size; int dma; int virt; } ;
struct s5p_mfc_dev {struct device** mem_dev; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_coherent (struct device*,int ,int *,int ) ;
 int mfc_debug (int,char*,int ,...) ;
 int mfc_err (char*,int ) ;

int s5p_mfc_alloc_generic_buf(struct s5p_mfc_dev *dev, unsigned int mem_ctx,
      struct s5p_mfc_priv_buf *b)
{
 struct device *mem_dev = dev->mem_dev[mem_ctx];

 mfc_debug(3, "Allocating generic buf: %zu\n", b->size);

 b->ctx = mem_ctx;
 b->virt = dma_alloc_coherent(mem_dev, b->size, &b->dma, GFP_KERNEL);
 if (!b->virt)
  goto no_mem;

 mfc_debug(3, "Allocated addr %p %pad\n", b->virt, &b->dma);
 return 0;
no_mem:
 mfc_err("Allocating generic buffer of size %zu failed\n", b->size);
 return -ENOMEM;
}
