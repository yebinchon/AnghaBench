
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpfe_fh {struct vpfe_device* vpfe_dev; } ;
struct vpfe_device {int dma_queue_lock; int dma_queue; int v4l2_dev; } ;
struct videobuf_queue {struct vpfe_fh* priv_data; } ;
struct videobuf_buffer {int state; } ;


 int INIT_LIST_HEAD (int *) ;
 int VIDEOBUF_NEEDS_INIT ;
 int debug ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int v4l2_dbg (int,int ,int *,char*) ;
 int videobuf_dma_contig_free (struct videobuf_queue*,struct videobuf_buffer*) ;

__attribute__((used)) static void vpfe_videobuf_release(struct videobuf_queue *vq,
      struct videobuf_buffer *vb)
{
 struct vpfe_fh *fh = vq->priv_data;
 struct vpfe_device *vpfe_dev = fh->vpfe_dev;
 unsigned long flags;

 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_videobuf_release\n");





 spin_lock_irqsave(&vpfe_dev->dma_queue_lock, flags);
 INIT_LIST_HEAD(&vpfe_dev->dma_queue);
 spin_unlock_irqrestore(&vpfe_dev->dma_queue_lock, flags);
 videobuf_dma_contig_free(vq, vb);
 vb->state = VIDEOBUF_NEEDS_INIT;
}
