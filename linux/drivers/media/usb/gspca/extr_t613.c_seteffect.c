
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
typedef int s32 ;







 int * effects_table ;
 int reg_w (struct gspca_dev*,int) ;
 int reg_w_buf (struct gspca_dev*,int ,int) ;

__attribute__((used)) static void seteffect(struct gspca_dev *gspca_dev, s32 val)
{
 int idx = 0;

 switch (val) {
 case 130:
  break;
 case 132:
  idx = 2;
  break;
 case 129:
  idx = 3;
  break;
 case 128:
  idx = 4;
  break;
 case 131:
  idx = 6;
  break;
 default:
  break;
 }

 reg_w_buf(gspca_dev, effects_table[idx],
    sizeof effects_table[0]);

 if (val == 128)
  reg_w(gspca_dev, 0x4aa6);
 else
  reg_w(gspca_dev, 0xfaa6);
}
