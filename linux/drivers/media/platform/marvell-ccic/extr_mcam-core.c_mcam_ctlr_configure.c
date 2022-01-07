
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcam_camera {int dev_lock; int (* dma_setup ) (struct mcam_camera*) ;int flags; } ;


 int CF_SG_RESTART ;
 int clear_bit (int ,int *) ;
 int mcam_ctlr_image (struct mcam_camera*) ;
 int mcam_set_config_needed (struct mcam_camera*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct mcam_camera*) ;

__attribute__((used)) static int mcam_ctlr_configure(struct mcam_camera *cam)
{
 unsigned long flags;

 spin_lock_irqsave(&cam->dev_lock, flags);
 clear_bit(CF_SG_RESTART, &cam->flags);
 cam->dma_setup(cam);
 mcam_ctlr_image(cam);
 mcam_set_config_needed(cam, 0);
 spin_unlock_irqrestore(&cam->dev_lock, flags);
 return 0;
}
