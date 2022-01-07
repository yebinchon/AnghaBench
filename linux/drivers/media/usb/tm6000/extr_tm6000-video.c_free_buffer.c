
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct videobuf_queue {struct tm6000_fh* priv_data; } ;
struct tm6000_fh {struct tm6000_core* dev; } ;
struct TYPE_3__ {struct tm6000_buffer* buf; } ;
struct tm6000_core {int slock; TYPE_1__ isoc_ctl; } ;
struct TYPE_4__ {int state; } ;
struct tm6000_buffer {TYPE_2__ vb; } ;


 int BUG_ON (int ) ;
 int VIDEOBUF_NEEDS_INIT ;
 int in_interrupt () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int videobuf_vmalloc_free (TYPE_2__*) ;

__attribute__((used)) static void free_buffer(struct videobuf_queue *vq, struct tm6000_buffer *buf)
{
 struct tm6000_fh *fh = vq->priv_data;
 struct tm6000_core *dev = fh->dev;
 unsigned long flags;

 BUG_ON(in_interrupt());
 spin_lock_irqsave(&dev->slock, flags);
 if (dev->isoc_ctl.buf == buf)
  dev->isoc_ctl.buf = ((void*)0);
 spin_unlock_irqrestore(&dev->slock, flags);

 videobuf_vmalloc_free(&buf->vb);
 buf->vb.state = VIDEOBUF_NEEDS_INIT;
}
