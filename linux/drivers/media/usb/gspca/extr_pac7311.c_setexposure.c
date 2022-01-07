
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int width; } ;
struct gspca_dev {TYPE_1__ pixfmt; } ;
typedef int s32 ;


 int reg_w (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setexposure(struct gspca_dev *gspca_dev, s32 val)
{
 reg_w(gspca_dev, 0xff, 0x04);
 reg_w(gspca_dev, 0x02, val);


 reg_w(gspca_dev, 0x11, 0x01);





 reg_w(gspca_dev, 0xff, 0x01);
 if (gspca_dev->pixfmt.width != 640 && val <= 3)
  reg_w(gspca_dev, 0x08, 0x09);
 else
  reg_w(gspca_dev, 0x08, 0x08);







 if (gspca_dev->pixfmt.width == 640 && val == 2)
  reg_w(gspca_dev, 0x80, 0x01);
 else
  reg_w(gspca_dev, 0x80, 0x1c);


 reg_w(gspca_dev, 0x11, 0x01);
}
