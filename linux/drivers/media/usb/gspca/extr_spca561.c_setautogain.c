
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int ag_cnt; } ;
struct gspca_dev {int dummy; } ;
typedef scalar_t__ s32 ;


 int AG_CNT_START ;

__attribute__((used)) static void setautogain(struct gspca_dev *gspca_dev, s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (val)
  sd->ag_cnt = AG_CNT_START;
 else
  sd->ag_cnt = -1;
}
