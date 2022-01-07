
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int ag_cnt; scalar_t__ autogain; } ;
struct gspca_dev {int dummy; } ;


 int AG_CNT_START ;

__attribute__((used)) static void setautogain(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (sd->autogain)
  sd->ag_cnt = AG_CNT_START;
 else
  sd->ag_cnt = -1;
}
