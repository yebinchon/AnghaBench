
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coda_dev {int dev; } ;
struct coda_aux_buf {int * dentry; scalar_t__ size; int * vaddr; int paddr; } ;


 int debugfs_remove (int *) ;
 int dma_free_coherent (int ,scalar_t__,int *,int ) ;

void coda_free_aux_buf(struct coda_dev *dev,
         struct coda_aux_buf *buf)
{
 if (buf->vaddr) {
  dma_free_coherent(dev->dev, buf->size, buf->vaddr, buf->paddr);
  buf->vaddr = ((void*)0);
  buf->size = 0;
  debugfs_remove(buf->dentry);
  buf->dentry = ((void*)0);
 }
}
