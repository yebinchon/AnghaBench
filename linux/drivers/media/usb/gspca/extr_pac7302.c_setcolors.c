
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {TYPE_1__* saturation; } ;
struct gspca_dev {int dummy; } ;
typedef int const s32 ;
struct TYPE_2__ {int const val; scalar_t__ maximum; } ;


 int reg_w (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setcolors(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int i, v;
 static const int a[9] =
  {217, -212, 0, -101, 170, -67, -38, -315, 355};
 static const int b[9] =
  {19, 106, 0, 19, 106, 1, 19, 106, 1};

 reg_w(gspca_dev, 0xff, 0x03);
 reg_w(gspca_dev, 0x11, 0x01);
 reg_w(gspca_dev, 0xff, 0x00);
 for (i = 0; i < 9; i++) {
  v = a[i] * sd->saturation->val / (s32)sd->saturation->maximum;
  v += b[i];
  reg_w(gspca_dev, 0x0f + 2 * i, (v >> 8) & 0x07);
  reg_w(gspca_dev, 0x0f + 2 * i + 1, v);
 }
 reg_w(gspca_dev, 0xdc, 0x01);
}
