
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct videobuf_queue {scalar_t__ dev; } ;
struct TYPE_6__ {scalar_t__ dev; } ;
struct videobuf_dma_sg_memory {TYPE_1__ dma; int magic; } ;
struct videobuf_buffer {int memory; int size; scalar_t__ boff; int bsize; int baddr; struct videobuf_dma_sg_memory* priv; } ;
struct v4l2_framebuffer {scalar_t__ base; } ;
typedef scalar_t__ dma_addr_t ;


 int BUG () ;
 int BUG_ON (int) ;
 int DMA_FROM_DEVICE ;
 int EINVAL ;
 int MAGIC_CHECK (int ,int ) ;
 int MAGIC_SG_MEM ;
 int PAGE_ALIGN (int ) ;
 int PAGE_SHIFT ;



 int WARN_ON (int) ;
 int videobuf_dma_init_kernel (TYPE_1__*,int ,int) ;
 int videobuf_dma_init_overlay (TYPE_1__*,int ,scalar_t__,int) ;
 int videobuf_dma_init_user (TYPE_1__*,int ,int ,int ) ;
 int videobuf_dma_init_user_locked (TYPE_1__*,int ,int ,int ) ;
 int videobuf_dma_map (scalar_t__,TYPE_1__*) ;

__attribute__((used)) static int __videobuf_iolock(struct videobuf_queue *q,
        struct videobuf_buffer *vb,
        struct v4l2_framebuffer *fbuf)
{
 int err, pages;
 dma_addr_t bus;
 struct videobuf_dma_sg_memory *mem = vb->priv;
 BUG_ON(!mem);

 MAGIC_CHECK(mem->magic, MAGIC_SG_MEM);

 if (!mem->dma.dev)
  mem->dma.dev = q->dev;
 else
  WARN_ON(mem->dma.dev != q->dev);

 switch (vb->memory) {
 case 130:
 case 128:
  if (0 == vb->baddr) {

   pages = PAGE_ALIGN(vb->size) >> PAGE_SHIFT;
   err = videobuf_dma_init_kernel(&mem->dma,
             DMA_FROM_DEVICE,
             pages);
   if (0 != err)
    return err;
  } else if (vb->memory == 128) {

   err = videobuf_dma_init_user(&mem->dma,
           DMA_FROM_DEVICE,
           vb->baddr, vb->bsize);
   if (0 != err)
    return err;
  } else {





   err = videobuf_dma_init_user_locked(&mem->dma,
            DMA_FROM_DEVICE,
            vb->baddr, vb->bsize);
   if (0 != err)
    return err;
  }
  break;
 case 129:
  if (((void*)0) == fbuf)
   return -EINVAL;






  bus = (dma_addr_t)(unsigned long)fbuf->base + vb->boff;
  pages = PAGE_ALIGN(vb->size) >> PAGE_SHIFT;
  err = videobuf_dma_init_overlay(&mem->dma, DMA_FROM_DEVICE,
      bus, pages);
  if (0 != err)
   return err;
  break;
 default:
  BUG();
 }
 err = videobuf_dma_map(q->dev, &mem->dma);
 if (0 != err)
  return err;

 return 0;
}
