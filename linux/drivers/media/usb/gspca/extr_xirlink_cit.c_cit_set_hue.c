
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int model; } ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;
 int cit_model2_Packet1 (struct gspca_dev*,int,int) ;
 int cit_model3_Packet1 (struct gspca_dev*,int,int) ;
 int cit_write_reg (struct gspca_dev*,int,int) ;

__attribute__((used)) static int cit_set_hue(struct gspca_dev *gspca_dev, s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 switch (sd->model) {
 case 132:
 case 131:
 case 133:

  break;
 case 130:
  cit_model2_Packet1(gspca_dev, 0x0024, val);

  break;
 case 129: {


  if (0) {

   int i = 0x05 + val * 1000 / 2540;
   cit_model3_Packet1(gspca_dev, 0x007e, i);
  }
  break;
 }
 case 128:
  cit_write_reg(gspca_dev, 0x00aa, 0x012d);
  cit_write_reg(gspca_dev, 0x001e, 0x012f);
  cit_write_reg(gspca_dev, 0xd141, 0x0124);
  cit_write_reg(gspca_dev, 160, 0x0127);
  cit_write_reg(gspca_dev, 160, 0x012e);
  cit_write_reg(gspca_dev, 160, 0x0130);
  cit_write_reg(gspca_dev, 0x8a28, 0x0124);
  cit_write_reg(gspca_dev, val, 0x012d);
  cit_write_reg(gspca_dev, 0xf545, 0x0124);
  break;
 }
 return 0;
}
