
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; int member_1; } ;
typedef TYPE_1__ u8 ;
struct gspca_dev {int dummy; } ;
typedef size_t s32 ;


 int reg_r (struct gspca_dev*,int) ;
 int reg_w (struct gspca_dev*,TYPE_1__ const,int) ;

__attribute__((used)) static void setsharpness(struct gspca_dev *gspca_dev, s32 val)
{
 static const u8 sharpness_tb[][2] = {
  {0x02, 0x03},
  {0x04, 0x07},
  {0x08, 0x0f},
  {0x10, 0x1e}
 };

 reg_w(gspca_dev, sharpness_tb[val][0], 0x01c6);
 reg_r(gspca_dev, 0x01c8);
 reg_r(gspca_dev, 0x01c9);
 reg_r(gspca_dev, 0x01ca);
 reg_w(gspca_dev, sharpness_tb[val][1], 0x01cb);
}
