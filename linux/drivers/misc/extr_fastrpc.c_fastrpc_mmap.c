
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {size_t vm_end; size_t vm_start; } ;
struct fastrpc_buf {int phys; int virt; int dev; } ;
struct dma_buf {struct fastrpc_buf* priv; } ;


 int FASTRPC_PHYS (int ) ;
 int dma_mmap_coherent (int ,struct vm_area_struct*,int ,int ,size_t) ;

__attribute__((used)) static int fastrpc_mmap(struct dma_buf *dmabuf,
   struct vm_area_struct *vma)
{
 struct fastrpc_buf *buf = dmabuf->priv;
 size_t size = vma->vm_end - vma->vm_start;

 return dma_mmap_coherent(buf->dev, vma, buf->virt,
     FASTRPC_PHYS(buf->phys), size);
}
