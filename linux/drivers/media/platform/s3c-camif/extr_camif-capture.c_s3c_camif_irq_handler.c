
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct camif_vp {int state; int frame_sequence; int active_buf_q; int pending_buf_q; int irq_queue; struct camif_dev* camif; } ;
struct camif_dev {int slock; int colorfx_cb; int colorfx_cr; int colorfx; TYPE_2__* variant; int test_pattern; } ;
struct TYPE_6__ {int timestamp; } ;
struct TYPE_4__ {TYPE_3__ vb2_buf; scalar_t__ sequence; } ;
struct camif_buffer {unsigned int index; int paddr; TYPE_1__ vb; } ;
typedef int irqreturn_t ;
struct TYPE_5__ {unsigned int ip_revision; scalar_t__ has_img_effect; } ;


 int CISTATUS_FRAMECNT (unsigned int) ;
 unsigned int CISTATUS_OVF_MASK ;
 int IRQ_HANDLED ;
 unsigned int S3C244X_CAMIF_IP_REV ;
 unsigned int S3C6410_CAMIF_IP_REV ;
 int ST_VP_ABORTING ;
 int ST_VP_CONFIG ;
 int ST_VP_LASTIRQ ;
 int ST_VP_OFF ;
 int ST_VP_PENDING ;
 int ST_VP_RUNNING ;
 int VB2_BUF_STATE_DONE ;
 int WARN_ON (int ) ;
 int camif_active_queue_add (struct camif_vp*,struct camif_buffer*) ;
 struct camif_buffer* camif_active_queue_peek (struct camif_vp*,unsigned int) ;
 int camif_hw_clear_fifo_overflow (struct camif_vp*) ;
 int camif_hw_clear_pending_irq (struct camif_vp*) ;
 int camif_hw_disable_capture (struct camif_vp*) ;
 int camif_hw_enable_scaler (struct camif_vp*,int) ;
 unsigned int camif_hw_get_status (struct camif_vp*) ;
 int camif_hw_set_camera_crop (struct camif_dev*) ;
 int camif_hw_set_effect (struct camif_dev*,int ,int ,int ) ;
 int camif_hw_set_flip (struct camif_vp*) ;
 int camif_hw_set_lastirq (struct camif_vp*,int) ;
 int camif_hw_set_output_addr (struct camif_vp*,int *,unsigned int) ;
 int camif_hw_set_scaler (struct camif_vp*) ;
 int camif_hw_set_test_pattern (struct camif_dev*,int ) ;
 struct camif_buffer* camif_pending_queue_pop (struct camif_vp*) ;
 int camif_prepare_dma_offset (struct camif_vp*) ;
 int ktime_get_ns () ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vb2_buffer_done (TYPE_3__*,int ) ;
 int wake_up (int *) ;

irqreturn_t s3c_camif_irq_handler(int irq, void *priv)
{
 struct camif_vp *vp = priv;
 struct camif_dev *camif = vp->camif;
 unsigned int ip_rev = camif->variant->ip_revision;
 unsigned int status;

 spin_lock(&camif->slock);

 if (ip_rev == S3C6410_CAMIF_IP_REV)
  camif_hw_clear_pending_irq(vp);

 status = camif_hw_get_status(vp);

 if (ip_rev == S3C244X_CAMIF_IP_REV && (status & CISTATUS_OVF_MASK)) {
  camif_hw_clear_fifo_overflow(vp);
  goto unlock;
 }

 if (vp->state & ST_VP_ABORTING) {
  if (vp->state & ST_VP_OFF) {

   vp->state &= ~(ST_VP_OFF | ST_VP_ABORTING |
           ST_VP_LASTIRQ);
   wake_up(&vp->irq_queue);
   goto unlock;
  } else if (vp->state & ST_VP_LASTIRQ) {
   camif_hw_disable_capture(vp);
   camif_hw_enable_scaler(vp, 0);
   camif_hw_set_lastirq(vp, 0);
   vp->state |= ST_VP_OFF;
  } else {

   camif_hw_set_lastirq(vp, 1);
   vp->state |= ST_VP_LASTIRQ;
  }
 }

 if (!list_empty(&vp->pending_buf_q) && (vp->state & ST_VP_RUNNING) &&
     !list_empty(&vp->active_buf_q)) {
  unsigned int index;
  struct camif_buffer *vbuf;





  index = (CISTATUS_FRAMECNT(status) + 2) & 1;
  vbuf = camif_active_queue_peek(vp, index);

  if (!WARN_ON(vbuf == ((void*)0))) {

   vbuf->vb.vb2_buf.timestamp = ktime_get_ns();
   vbuf->vb.sequence = vp->frame_sequence++;
   vb2_buffer_done(&vbuf->vb.vb2_buf, VB2_BUF_STATE_DONE);


   vbuf = camif_pending_queue_pop(vp);
   vbuf->index = index;
   camif_hw_set_output_addr(vp, &vbuf->paddr, index);
   camif_hw_set_output_addr(vp, &vbuf->paddr, index + 2);


   camif_active_queue_add(vp, vbuf);
  }
 } else if (!(vp->state & ST_VP_ABORTING) &&
     (vp->state & ST_VP_PENDING)) {
  vp->state |= ST_VP_RUNNING;
 }

 if (vp->state & ST_VP_CONFIG) {
  camif_prepare_dma_offset(vp);
  camif_hw_set_camera_crop(camif);
  camif_hw_set_scaler(vp);
  camif_hw_set_flip(vp);
  camif_hw_set_test_pattern(camif, camif->test_pattern);
  if (camif->variant->has_img_effect)
   camif_hw_set_effect(camif, camif->colorfx,
        camif->colorfx_cr, camif->colorfx_cb);
  vp->state &= ~ST_VP_CONFIG;
 }
unlock:
 spin_unlock(&camif->slock);
 return IRQ_HANDLED;
}
