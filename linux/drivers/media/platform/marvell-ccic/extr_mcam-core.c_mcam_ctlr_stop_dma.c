
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcam_camera {int dev_lock; int flags; int state; } ;


 int CF_DMA_ACTIVE ;
 int CF_SG_RESTART ;
 int S_IDLE ;
 int cam_err (struct mcam_camera*,char*) ;
 int clear_bit (int ,int *) ;
 int mcam_ctlr_irq_disable (struct mcam_camera*) ;
 int mcam_ctlr_stop (struct mcam_camera*) ;
 int msleep (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void mcam_ctlr_stop_dma(struct mcam_camera *cam)
{
 unsigned long flags;






 spin_lock_irqsave(&cam->dev_lock, flags);
 clear_bit(CF_SG_RESTART, &cam->flags);
 mcam_ctlr_stop(cam);
 cam->state = S_IDLE;
 spin_unlock_irqrestore(&cam->dev_lock, flags);







 msleep(150);
 if (test_bit(CF_DMA_ACTIVE, &cam->flags))
  cam_err(cam, "Timeout waiting for DMA to end\n");

 spin_lock_irqsave(&cam->dev_lock, flags);
 mcam_ctlr_irq_disable(cam);
 spin_unlock_irqrestore(&cam->dev_lock, flags);
}
