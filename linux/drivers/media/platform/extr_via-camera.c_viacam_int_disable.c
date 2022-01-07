
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_camera {int dummy; } ;


 int VCR_INTCTRL ;
 int VDE_I_C0AVEN ;
 int viacam_write_reg (struct via_camera*,int ,int ) ;
 int viafb_irq_disable (int ) ;

__attribute__((used)) static void viacam_int_disable(struct via_camera *cam)
{
 viafb_irq_disable(VDE_I_C0AVEN);
 viacam_write_reg(cam, VCR_INTCTRL, 0);
}
