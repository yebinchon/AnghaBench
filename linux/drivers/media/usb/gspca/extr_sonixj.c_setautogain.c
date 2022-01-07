
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sd {int sensor; int ag_cnt; int gspca_dev; } ;
struct gspca_dev {TYPE_1__* autogain; } ;
struct TYPE_2__ {scalar_t__ val; } ;


 int AG_CNT_START ;


 int i2c_w1 (int *,int,int) ;

__attribute__((used)) static void setautogain(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 switch (sd->sensor) {
 case 129:
 case 128: {
  u8 comb;

  if (sd->sensor == 129)
   comb = 0xc0;
  else
   comb = 0xa0;
  if (gspca_dev->autogain->val)
   comb |= 0x03;
  i2c_w1(&sd->gspca_dev, 0x13, comb);
  return;
     }
 }
 if (gspca_dev->autogain->val)
  sd->ag_cnt = AG_CNT_START;
 else
  sd->ag_cnt = -1;
}
