
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
typedef int s32 ;
typedef int __u8 ;


 int* reg10 ;
 int reg70 ;
 int* regE5c ;
 int reg_r (struct gspca_dev*,int,int) ;
 int reg_w (struct gspca_dev*,int,int*,int) ;
 int reg_w_val (struct gspca_dev*,int,int ) ;

__attribute__((used)) static void setbrightness(struct gspca_dev *gspca_dev, s32 val, s32 sat)
{
 __u8 regE5cbx[] = { 0x88, 0x00, 0xd4, 0x01, 0x88, 0x01, 0x01, 0x01 };
 __u8 reg51c[2];

 regE5cbx[2] = val;
 reg_w(gspca_dev, 0x00e5, regE5cbx, 8);
 reg_r(gspca_dev, 0x00e8, 8);
 reg_w(gspca_dev, 0x00e5, regE5c, 4);
 reg_r(gspca_dev, 0x00e8, 1);

 reg51c[0] = 0x77;
 reg51c[1] = sat;
 reg_w(gspca_dev, 0x0051, reg51c, 2);
 reg_w(gspca_dev, 0x0010, reg10, 2);
 reg_w_val(gspca_dev, 0x0070, reg70);
}
