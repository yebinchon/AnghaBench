
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fastrpc_buf {void* virt; } ;
struct dma_buf {struct fastrpc_buf* priv; } ;



__attribute__((used)) static void *fastrpc_vmap(struct dma_buf *dmabuf)
{
 struct fastrpc_buf *buf = dmabuf->priv;

 return buf->virt;
}
