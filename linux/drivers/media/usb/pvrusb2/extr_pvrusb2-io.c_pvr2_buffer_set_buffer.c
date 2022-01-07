
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_stream {unsigned int i_bcount; int mutex; int list_lock; int i_count; } ;
struct pvr2_buffer {scalar_t__ state; unsigned int max_count; struct pvr2_stream* stream; void* ptr; } ;


 int EINVAL ;
 int EPERM ;
 int PVR2_TRACE_BUF_FLOW ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pvr2_buffer_state_decode (scalar_t__) ;
 scalar_t__ pvr2_buffer_state_idle ;
 int pvr2_trace (int ,char*,int ,unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int pvr2_buffer_set_buffer(struct pvr2_buffer *bp, void *ptr, unsigned int cnt)
{
 int ret = 0;
 unsigned long irq_flags;
 struct pvr2_stream *sp;
 if (!bp) return -EINVAL;
 sp = bp->stream;
 mutex_lock(&sp->mutex);
 do {
  spin_lock_irqsave(&sp->list_lock, irq_flags);
  if (bp->state != pvr2_buffer_state_idle) {
   ret = -EPERM;
  } else {
   bp->ptr = ptr;
   bp->stream->i_bcount -= bp->max_count;
   bp->max_count = cnt;
   bp->stream->i_bcount += bp->max_count;
   pvr2_trace(PVR2_TRACE_BUF_FLOW,
       "/*---TRACE_FLOW---*/ bufferPool	%8s cap cap=%07d cnt=%02d",
       pvr2_buffer_state_decode(
        pvr2_buffer_state_idle),
       bp->stream->i_bcount, bp->stream->i_count);
  }
  spin_unlock_irqrestore(&sp->list_lock, irq_flags);
 } while (0);
 mutex_unlock(&sp->mutex);
 return ret;
}
