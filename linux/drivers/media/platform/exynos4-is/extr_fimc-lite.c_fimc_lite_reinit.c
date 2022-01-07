
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vb2_buf; } ;
struct flite_buffer {TYPE_1__ vb; } ;
struct fimc_lite {int state; int ve; int slock; int active_buf_q; int pending_buf_q; } ;


 int ST_FLITE_OFF ;
 int ST_FLITE_PENDING ;
 int ST_FLITE_RUN ;
 int ST_FLITE_STREAM ;
 int ST_FLITE_SUSPENDED ;
 int ST_SENSOR_STREAM ;
 int VB2_BUF_STATE_ERROR ;
 struct flite_buffer* fimc_lite_active_queue_pop (struct fimc_lite*) ;
 int fimc_lite_pending_queue_add (struct fimc_lite*,struct flite_buffer*) ;
 struct flite_buffer* fimc_lite_pending_queue_pop (struct fimc_lite*) ;
 int fimc_pipeline_call (int *,int ,int ) ;
 int flite_hw_reset (struct fimc_lite*) ;
 int list_empty (int *) ;
 int set_stream ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vb2_buffer_done (int *,int ) ;

__attribute__((used)) static int fimc_lite_reinit(struct fimc_lite *fimc, bool suspend)
{
 struct flite_buffer *buf;
 unsigned long flags;
 bool streaming;

 spin_lock_irqsave(&fimc->slock, flags);
 streaming = fimc->state & (1 << ST_SENSOR_STREAM);

 fimc->state &= ~(1 << ST_FLITE_RUN | 1 << ST_FLITE_OFF |
    1 << ST_FLITE_STREAM | 1 << ST_SENSOR_STREAM);
 if (suspend)
  fimc->state |= (1 << ST_FLITE_SUSPENDED);
 else
  fimc->state &= ~(1 << ST_FLITE_PENDING |
     1 << ST_FLITE_SUSPENDED);


 while (!suspend && !list_empty(&fimc->pending_buf_q)) {
  buf = fimc_lite_pending_queue_pop(fimc);
  vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
 }

 while (!list_empty(&fimc->active_buf_q)) {
  buf = fimc_lite_active_queue_pop(fimc);
  if (suspend)
   fimc_lite_pending_queue_add(fimc, buf);
  else
   vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
 }

 spin_unlock_irqrestore(&fimc->slock, flags);

 flite_hw_reset(fimc);

 if (!streaming)
  return 0;

 return fimc_pipeline_call(&fimc->ve, set_stream, 0);
}
