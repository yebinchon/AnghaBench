
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {int sensor; TYPE_1__* illum; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_2__ {int val; } ;




 int reg_w1 (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setillum(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 switch (sd->sensor) {
 case 129:
  reg_w1(gspca_dev, 0x02,
   sd->illum->val ? 0x64 : 0x60);
  break;
 case 128:
  reg_w1(gspca_dev, 0x02,
   sd->illum->val ? 0x77 : 0x74);



  break;
 }
}
