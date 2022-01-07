
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_camera {int dummy; } ;


 int VCR_IC_EAV ;
 int VCR_IC_EVBI ;
 int VCR_IC_FFULL ;
 int VCR_IC_INTEN ;
 int VCR_INTCTRL ;
 int VDE_I_C0AVEN ;
 int viacam_write_reg (struct via_camera*,int ,int) ;
 int viafb_irq_enable (int ) ;

__attribute__((used)) static void viacam_int_enable(struct via_camera *cam)
{
 viacam_write_reg(cam, VCR_INTCTRL,
   VCR_IC_INTEN|VCR_IC_EAV|VCR_IC_EVBI|VCR_IC_FFULL);
 viafb_irq_enable(VDE_I_C0AVEN);
}
