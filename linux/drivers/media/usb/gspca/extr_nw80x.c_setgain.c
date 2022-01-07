
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int webcam; } ;
struct gspca_dev {int dummy; } ;




 int reg_w (struct gspca_dev*,int,int*,int) ;
 int swap_bits (int) ;

__attribute__((used)) static void setgain(struct gspca_dev *gspca_dev, u8 val)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 v[2];

 switch (sd->webcam) {
 case 128:
  reg_w(gspca_dev, 0x1026, &val, 1);
  break;
 case 129:

  val = swap_bits(val);
  v[0] = val << 3;
  v[1] = val >> 5;
  reg_w(gspca_dev, 0x101d, v, 2);
  break;
 }
}
