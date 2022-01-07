
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {scalar_t__ bridge; int webcam; } ;
struct gspca_dev {int dummy; } ;


 scalar_t__ BRIDGE_NW801 ;
 int reg_w (struct gspca_dev*,int,int*,int) ;

__attribute__((used)) static void sd_stopN(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 value;


 if (sd->bridge != BRIDGE_NW801) {
  value = 0x02;
  reg_w(gspca_dev, 0x0406, &value, 1);
 }


 switch (sd->webcam) {
 case 136:
 case 133:
 case 134:
 case 132:
  value = 0xff;
  break;
 case 135:
  value = 0x21;
  break;
 case 130:
 case 129:
 case 131:
 case 128:
  value = 0x01;
  break;
 default:
  return;
 }
 reg_w(gspca_dev, 0x0404, &value, 1);
}
