
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {int irqlock; } ;
struct videobuf_buffer {scalar_t__ state; } ;


 scalar_t__ VIDEOBUF_ACTIVE ;
 scalar_t__ VIDEOBUF_QUEUED ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int state_neither_active_nor_queued(struct videobuf_queue *q,
        struct videobuf_buffer *vb)
{
 unsigned long flags;
 bool rc;

 spin_lock_irqsave(q->irqlock, flags);
 rc = vb->state != VIDEOBUF_ACTIVE && vb->state != VIDEOBUF_QUEUED;
 spin_unlock_irqrestore(q->irqlock, flags);
 return rc;
}
