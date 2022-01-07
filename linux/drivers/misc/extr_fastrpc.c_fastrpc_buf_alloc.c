
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct fastrpc_user {TYPE_1__* sctx; } ;
struct fastrpc_buf {int size; scalar_t__ phys; int lock; int * virt; struct device* dev; struct fastrpc_user* fl; int attachments; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {scalar_t__ sid; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int * dma_alloc_coherent (struct device*,int,int *,int ) ;
 int kfree (struct fastrpc_buf*) ;
 struct fastrpc_buf* kzalloc (int,int ) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;

__attribute__((used)) static int fastrpc_buf_alloc(struct fastrpc_user *fl, struct device *dev,
        u64 size, struct fastrpc_buf **obuf)
{
 struct fastrpc_buf *buf;

 buf = kzalloc(sizeof(*buf), GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 INIT_LIST_HEAD(&buf->attachments);
 mutex_init(&buf->lock);

 buf->fl = fl;
 buf->virt = ((void*)0);
 buf->phys = 0;
 buf->size = size;
 buf->dev = dev;

 buf->virt = dma_alloc_coherent(dev, buf->size, (dma_addr_t *)&buf->phys,
           GFP_KERNEL);
 if (!buf->virt) {
  mutex_destroy(&buf->lock);
  kfree(buf);
  return -ENOMEM;
 }

 if (fl->sctx && fl->sctx->sid)
  buf->phys += ((u64)fl->sctx->sid << 32);

 *obuf = buf;

 return 0;
}
