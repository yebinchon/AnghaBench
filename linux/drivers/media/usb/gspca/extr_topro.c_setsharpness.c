
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {scalar_t__ bridge; } ;
struct TYPE_2__ {int width; } ;
struct gspca_dev {TYPE_1__ pixfmt; } ;
typedef int s32 ;


 scalar_t__ BRIDGE_TP6800 ;
 int TP6800_R5D_DEMOSAIC_CFG ;
 int TP6800_R78_FORMAT ;
 int reg_w (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setsharpness(struct gspca_dev *gspca_dev, s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (sd->bridge == BRIDGE_TP6800) {
  val |= 0x08;
  if (gspca_dev->pixfmt.width == 640)
   reg_w(gspca_dev, TP6800_R78_FORMAT, 0x00);
  else
   val |= 0x04;
  reg_w(gspca_dev, TP6800_R5D_DEMOSAIC_CFG, val);
 } else {
  val = (val << 5) | 0x08;
  reg_w(gspca_dev, 0x59, val);
 }
}
