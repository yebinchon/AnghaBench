
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct via_camera {int flags; TYPE_1__* viadev; } ;
struct TYPE_2__ {int reg_lock; } ;


 int CF_CONFIG_NEEDED ;
 int clear_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int viacam_ctlr_cbufs (struct via_camera*) ;
 int viacam_ctlr_image (struct via_camera*) ;

__attribute__((used)) static int viacam_config_controller(struct via_camera *cam)
{
 int ret;
 unsigned long flags;

 spin_lock_irqsave(&cam->viadev->reg_lock, flags);
 ret = viacam_ctlr_cbufs(cam);
 if (!ret)
  viacam_ctlr_image(cam);
 spin_unlock_irqrestore(&cam->viadev->reg_lock, flags);
 clear_bit(CF_CONFIG_NEEDED, &cam->flags);
 return ret;
}
