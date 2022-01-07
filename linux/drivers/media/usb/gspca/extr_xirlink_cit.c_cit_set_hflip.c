
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int model; } ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;
 int cit_write_reg (struct gspca_dev*,int,int) ;

__attribute__((used)) static void cit_set_hflip(struct gspca_dev *gspca_dev, s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 switch (sd->model) {
 case 132:
  if (val)
   cit_write_reg(gspca_dev, 0x0020, 0x0115);
  else
   cit_write_reg(gspca_dev, 0x0040, 0x0115);
  break;
 case 131:
 case 130:
 case 129:
 case 128:
 case 133:
  break;
 }
}
