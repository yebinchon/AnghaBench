
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fastrpc_buf {void* virt; } ;
struct dma_buf {struct fastrpc_buf* priv; } ;


 unsigned long PAGE_SIZE ;

__attribute__((used)) static void *fastrpc_kmap(struct dma_buf *dmabuf, unsigned long pgnum)
{
 struct fastrpc_buf *buf = dmabuf->priv;

 return buf->virt ? buf->virt + pgnum * PAGE_SIZE : ((void*)0);
}
