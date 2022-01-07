
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fimc_vid_cap {int ve; scalar_t__ buf_index; int active_buf_q; int pending_buf_q; } ;
struct TYPE_2__ {int vb2_buf; } ;
struct fimc_vid_buffer {TYPE_1__ vb; } ;
struct fimc_dev {int state; int slock; struct fimc_vid_cap vid_cap; } ;


 int ST_CAPT_ISP_STREAM ;
 int ST_CAPT_PEND ;
 int ST_CAPT_RUN ;
 int ST_CAPT_SHUT ;
 int ST_CAPT_STREAM ;
 int ST_CAPT_SUSPENDED ;
 int VB2_BUF_STATE_ERROR ;
 struct fimc_vid_buffer* fimc_active_queue_pop (struct fimc_vid_cap*) ;
 int fimc_hw_reset (struct fimc_dev*) ;
 int fimc_pending_queue_add (struct fimc_vid_cap*,struct fimc_vid_buffer*) ;
 struct fimc_vid_buffer* fimc_pending_queue_pop (struct fimc_vid_cap*) ;
 int fimc_pipeline_call (int *,int ,int ) ;
 int list_empty (int *) ;
 int set_stream ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vb2_buffer_done (int *,int ) ;

__attribute__((used)) static int fimc_capture_state_cleanup(struct fimc_dev *fimc, bool suspend)
{
 struct fimc_vid_cap *cap = &fimc->vid_cap;
 struct fimc_vid_buffer *buf;
 unsigned long flags;
 bool streaming;

 spin_lock_irqsave(&fimc->slock, flags);
 streaming = fimc->state & (1 << ST_CAPT_ISP_STREAM);

 fimc->state &= ~(1 << ST_CAPT_RUN | 1 << ST_CAPT_SHUT |
    1 << ST_CAPT_STREAM | 1 << ST_CAPT_ISP_STREAM);
 if (suspend)
  fimc->state |= (1 << ST_CAPT_SUSPENDED);
 else
  fimc->state &= ~(1 << ST_CAPT_PEND | 1 << ST_CAPT_SUSPENDED);


 while (!suspend && !list_empty(&cap->pending_buf_q)) {
  buf = fimc_pending_queue_pop(cap);
  vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
 }

 while (!list_empty(&cap->active_buf_q)) {
  buf = fimc_active_queue_pop(cap);
  if (suspend)
   fimc_pending_queue_add(cap, buf);
  else
   vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
 }

 fimc_hw_reset(fimc);
 cap->buf_index = 0;

 spin_unlock_irqrestore(&fimc->slock, flags);

 if (streaming)
  return fimc_pipeline_call(&cap->ve, set_stream, 0);
 else
  return 0;
}
