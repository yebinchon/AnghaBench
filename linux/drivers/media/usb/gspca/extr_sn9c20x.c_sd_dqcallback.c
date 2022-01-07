
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ sensor; int avg_lum; int * autogain; } ;
struct gspca_dev {int dummy; } ;


 scalar_t__ SENSOR_SOI968 ;
 int atomic_read (int *) ;
 int do_autoexposure (struct gspca_dev*,int) ;
 int do_autogain (struct gspca_dev*,int) ;
 int v4l2_ctrl_g_ctrl (int *) ;

__attribute__((used)) static void sd_dqcallback(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int avg_lum;

 if (sd->autogain == ((void*)0) || !v4l2_ctrl_g_ctrl(sd->autogain))
  return;

 avg_lum = atomic_read(&sd->avg_lum);
 if (sd->sensor == SENSOR_SOI968)
  do_autogain(gspca_dev, avg_lum);
 else
  do_autoexposure(gspca_dev, avg_lum);
}
