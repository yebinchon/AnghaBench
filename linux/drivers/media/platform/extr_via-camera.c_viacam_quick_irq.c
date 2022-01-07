
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct via_camera {TYPE_1__* viadev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int reg_lock; } ;


 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int VCR_IC_EAV ;
 int VCR_IC_EVBI ;
 int VCR_IC_FFULL ;
 int VCR_INTCTRL ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int viacam_read_reg (struct via_camera*,int ) ;
 int viacam_write_reg (struct via_camera*,int ,int) ;

__attribute__((used)) static irqreturn_t viacam_quick_irq(int irq, void *data)
{
 struct via_camera *cam = data;
 irqreturn_t ret = IRQ_NONE;
 int icv;





 spin_lock(&cam->viadev->reg_lock);
 icv = viacam_read_reg(cam, VCR_INTCTRL);
 if (icv & VCR_IC_EAV) {
  icv |= VCR_IC_EAV|VCR_IC_EVBI|VCR_IC_FFULL;
  viacam_write_reg(cam, VCR_INTCTRL, icv);
  ret = IRQ_WAKE_THREAD;
 }
 spin_unlock(&cam->viadev->reg_lock);
 return ret;
}
