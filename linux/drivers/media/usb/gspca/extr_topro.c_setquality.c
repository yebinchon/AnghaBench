
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ bridge; } ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;


 scalar_t__ BRIDGE_TP6810 ;
 int TP6800_R79_QUALITY ;
 int TP6800_R7A_BLK_THRLD ;
 int msleep (int) ;
 int reg_w (struct gspca_dev*,int ,int) ;

__attribute__((used)) static void setquality(struct gspca_dev *gspca_dev, s32 q)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (q != 16)
  q = 15 - q;

 reg_w(gspca_dev, TP6800_R7A_BLK_THRLD, 0x00);
 reg_w(gspca_dev, TP6800_R79_QUALITY, 0x04);
 reg_w(gspca_dev, TP6800_R79_QUALITY, q);


 if (q == 15 && sd->bridge == BRIDGE_TP6810) {
  msleep(4);
  reg_w(gspca_dev, TP6800_R7A_BLK_THRLD, 0x19);
 }
}
