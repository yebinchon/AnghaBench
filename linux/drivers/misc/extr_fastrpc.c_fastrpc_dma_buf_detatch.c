
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fastrpc_dma_buf_attachment {int sgt; int node; } ;
struct fastrpc_buf {int lock; } ;
struct dma_buf_attachment {struct fastrpc_dma_buf_attachment* priv; } ;
struct dma_buf {struct fastrpc_buf* priv; } ;


 int kfree (struct fastrpc_dma_buf_attachment*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sg_free_table (int *) ;

__attribute__((used)) static void fastrpc_dma_buf_detatch(struct dma_buf *dmabuf,
        struct dma_buf_attachment *attachment)
{
 struct fastrpc_dma_buf_attachment *a = attachment->priv;
 struct fastrpc_buf *buffer = dmabuf->priv;

 mutex_lock(&buffer->lock);
 list_del(&a->node);
 mutex_unlock(&buffer->lock);
 sg_free_table(&a->sgt);
 kfree(a);
}
