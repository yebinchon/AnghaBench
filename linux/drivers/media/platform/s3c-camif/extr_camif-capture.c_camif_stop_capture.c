
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camif_vp {int state; int irq_queue; struct camif_dev* camif; } ;
struct camif_dev {int slock; } ;


 int CAMIF_STOP_TIMEOUT ;
 int ST_VP_ABORTING ;
 int ST_VP_LASTIRQ ;
 int ST_VP_OFF ;
 int camif_hw_disable_capture (struct camif_vp*) ;
 int camif_hw_enable_scaler (struct camif_vp*,int) ;
 int camif_reinitialize (struct camif_vp*) ;
 int msecs_to_jiffies (int ) ;
 int s3c_vp_active (struct camif_vp*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int camif_stop_capture(struct camif_vp *vp)
{
 struct camif_dev *camif = vp->camif;
 unsigned long flags;
 int ret;

 if (!s3c_vp_active(vp))
  return 0;

 spin_lock_irqsave(&camif->slock, flags);
 vp->state &= ~(ST_VP_OFF | ST_VP_LASTIRQ);
 vp->state |= ST_VP_ABORTING;
 spin_unlock_irqrestore(&camif->slock, flags);

 ret = wait_event_timeout(vp->irq_queue,
      !(vp->state & ST_VP_ABORTING),
      msecs_to_jiffies(CAMIF_STOP_TIMEOUT));

 spin_lock_irqsave(&camif->slock, flags);

 if (ret == 0 && !(vp->state & ST_VP_OFF)) {

  vp->state &= ~(ST_VP_OFF | ST_VP_ABORTING |
          ST_VP_LASTIRQ);

  camif_hw_disable_capture(vp);
  camif_hw_enable_scaler(vp, 0);
 }

 spin_unlock_irqrestore(&camif->slock, flags);

 return camif_reinitialize(vp);
}
