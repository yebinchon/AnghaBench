
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fastrpc_dma_buf_attachment {int node; int dev; int sgt; } ;
struct fastrpc_buf {int lock; int attachments; int dev; int size; int phys; int virt; } ;
struct dma_buf_attachment {struct fastrpc_dma_buf_attachment* priv; int dev; } ;
struct dma_buf {struct fastrpc_buf* priv; } ;


 int EINVAL ;
 int ENOMEM ;
 int FASTRPC_PHYS (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dev_err (int ,char*) ;
 int dma_get_sgtable (int ,int *,int ,int ,int ) ;
 int kfree (struct fastrpc_dma_buf_attachment*) ;
 struct fastrpc_dma_buf_attachment* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int fastrpc_dma_buf_attach(struct dma_buf *dmabuf,
      struct dma_buf_attachment *attachment)
{
 struct fastrpc_dma_buf_attachment *a;
 struct fastrpc_buf *buffer = dmabuf->priv;
 int ret;

 a = kzalloc(sizeof(*a), GFP_KERNEL);
 if (!a)
  return -ENOMEM;

 ret = dma_get_sgtable(buffer->dev, &a->sgt, buffer->virt,
         FASTRPC_PHYS(buffer->phys), buffer->size);
 if (ret < 0) {
  dev_err(buffer->dev, "failed to get scatterlist from DMA API\n");
  kfree(a);
  return -EINVAL;
 }

 a->dev = attachment->dev;
 INIT_LIST_HEAD(&a->node);
 attachment->priv = a;

 mutex_lock(&buffer->lock);
 list_add(&a->node, &buffer->attachments);
 mutex_unlock(&buffer->lock);

 return 0;
}
