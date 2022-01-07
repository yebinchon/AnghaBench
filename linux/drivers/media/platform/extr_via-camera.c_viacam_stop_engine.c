
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct via_camera {TYPE_1__* viadev; int opstate; } ;
struct TYPE_2__ {int reg_lock; } ;


 int S_IDLE ;
 int VCR_CAPINTC ;
 int VCR_CI_ENABLE ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int viacam_int_disable (struct via_camera*) ;
 int viacam_read_reg (struct via_camera*,int ) ;
 int viacam_write_reg_mask (struct via_camera*,int ,int ,int ) ;

__attribute__((used)) static void viacam_stop_engine(struct via_camera *cam)
{
 spin_lock_irq(&cam->viadev->reg_lock);
 viacam_int_disable(cam);
 viacam_write_reg_mask(cam, VCR_CAPINTC, 0, VCR_CI_ENABLE);
 (void) viacam_read_reg(cam, VCR_CAPINTC);
 cam->opstate = S_IDLE;
 spin_unlock_irq(&cam->viadev->reg_lock);
}
