
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct camif_vp {int state; int active_buf_q; int pending_buf_q; struct camif_dev* camif; } ;
struct camif_dev {int slock; } ;
struct TYPE_2__ {int vb2_buf; } ;
struct camif_buffer {TYPE_1__ vb; } ;


 int ST_VP_ABORTING ;
 int ST_VP_LASTIRQ ;
 int ST_VP_OFF ;
 int ST_VP_PENDING ;
 int ST_VP_RUNNING ;
 int ST_VP_SENSOR_STREAMING ;
 int ST_VP_STREAMING ;
 int VB2_BUF_STATE_ERROR ;
 struct camif_buffer* camif_active_queue_pop (struct camif_vp*) ;
 struct camif_buffer* camif_pending_queue_pop (struct camif_vp*) ;
 int list_empty (int *) ;
 int sensor_set_streaming (struct camif_dev*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vb2_buffer_done (int *,int ) ;

__attribute__((used)) static int camif_reinitialize(struct camif_vp *vp)
{
 struct camif_dev *camif = vp->camif;
 struct camif_buffer *buf;
 unsigned long flags;
 bool streaming;

 spin_lock_irqsave(&camif->slock, flags);
 streaming = vp->state & ST_VP_SENSOR_STREAMING;

 vp->state &= ~(ST_VP_PENDING | ST_VP_RUNNING | ST_VP_OFF |
         ST_VP_ABORTING | ST_VP_STREAMING |
         ST_VP_SENSOR_STREAMING | ST_VP_LASTIRQ);


 while (!list_empty(&vp->pending_buf_q)) {
  buf = camif_pending_queue_pop(vp);
  vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
 }

 while (!list_empty(&vp->active_buf_q)) {
  buf = camif_active_queue_pop(vp);
  vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
 }

 spin_unlock_irqrestore(&camif->slock, flags);

 if (!streaming)
  return 0;

 return sensor_set_streaming(camif, 0);
}
