
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int avg_lum; int * autogain; } ;
struct gspca_dev {int dummy; } ;


 int do_autogain (struct gspca_dev*,int ) ;
 int v4l2_ctrl_g_ctrl (int *) ;

__attribute__((used)) static void sd_dqcallback(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (sd->autogain == ((void*)0) || !v4l2_ctrl_g_ctrl(sd->autogain))
  return;

 do_autogain(gspca_dev, sd->avg_lum);
}
