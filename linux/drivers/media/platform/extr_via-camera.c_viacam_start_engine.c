
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct via_camera {TYPE_1__* viadev; int opstate; } ;
struct TYPE_2__ {int reg_lock; } ;


 int S_RUNNING ;
 int VCR_CAPINTC ;
 int VCR_CI_ENABLE ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int viacam_int_enable (struct via_camera*) ;
 int viacam_read_reg (struct via_camera*,int ) ;
 int viacam_write_reg_mask (struct via_camera*,int ,int ,int ) ;

__attribute__((used)) static void viacam_start_engine(struct via_camera *cam)
{
 spin_lock_irq(&cam->viadev->reg_lock);
 viacam_write_reg_mask(cam, VCR_CAPINTC, VCR_CI_ENABLE, VCR_CI_ENABLE);
 viacam_int_enable(cam);
 (void) viacam_read_reg(cam, VCR_CAPINTC);
 cam->opstate = S_RUNNING;
 spin_unlock_irq(&cam->viadev->reg_lock);
}
