
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;


 int MASK_AD9389B_EDID_RDY_INT ;
 int MASK_AD9389B_HPD_INT ;
 int MASK_AD9389B_MSEN_INT ;
 scalar_t__ ad9389b_have_hotplug (struct v4l2_subdev*) ;
 int ad9389b_rd (struct v4l2_subdev*,int) ;
 int ad9389b_wr (struct v4l2_subdev*,int,int) ;
 int v4l2_err (struct v4l2_subdev*,char*) ;

__attribute__((used)) static void ad9389b_set_isr(struct v4l2_subdev *sd, bool enable)
{
 u8 irqs = MASK_AD9389B_HPD_INT | MASK_AD9389B_MSEN_INT;
 u8 irqs_rd;
 int retries = 100;



 if (!enable)
  irqs = 0;
 else if (ad9389b_have_hotplug(sd))
  irqs |= MASK_AD9389B_EDID_RDY_INT;
 do {
  ad9389b_wr(sd, 0x94, irqs);
  irqs_rd = ad9389b_rd(sd, 0x94);
 } while (retries-- && irqs_rd != irqs);

 if (irqs_rd != irqs)
  v4l2_err(sd, "Could not set interrupts: hw failure?\n");
}
