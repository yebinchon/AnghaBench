
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcam_camera {int dev_lock; int (* plat_power_down ) (struct mcam_camera*) ;} ;


 int C1_PWRDWN ;
 int REG_CTRL1 ;
 int mcam_reg_set_bit (struct mcam_camera*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct mcam_camera*) ;

__attribute__((used)) static void mcam_ctlr_power_down(struct mcam_camera *cam)
{
 unsigned long flags;

 spin_lock_irqsave(&cam->dev_lock, flags);





 mcam_reg_set_bit(cam, REG_CTRL1, C1_PWRDWN);
 if (cam->plat_power_down)
  cam->plat_power_down(cam);
 spin_unlock_irqrestore(&cam->dev_lock, flags);
}
