
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int webcam; } ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;







 int reg_w (struct gspca_dev*,int,int*,int) ;

__attribute__((used)) static void setexposure(struct gspca_dev *gspca_dev, s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 v[2];

 switch (sd->webcam) {
 case 128:
  v[0] = ((9 - val) << 3) | 0x01;
  reg_w(gspca_dev, 0x1019, v, 1);
  break;
 case 132:
 case 131:
 case 129:
 case 130:
  v[0] = val;
  v[1] = val >> 8;
  reg_w(gspca_dev, 0x101b, v, 2);
  break;
 }
}
