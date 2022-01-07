
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {scalar_t__ ag_cnt; int sensor; int exposure; int avg_lum; } ;
struct gspca_dev {int dummy; } ;


 scalar_t__ AG_CNT_START ;
 int D_FRAM ;




 int SENSOR_PO2030N ;
 int atomic_read (int *) ;
 void* expo_adjust (struct gspca_dev*,unsigned int) ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int) ;
 int gspca_expo_autogain (struct gspca_dev*,int,int,int,int,int) ;
 int setredblue (struct gspca_dev*) ;

__attribute__((used)) static void do_autogain(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int delta;
 int expotimes;
 u8 luma_mean = 130;
 u8 luma_delta = 20;


 if (sd->ag_cnt < 0)
  return;
 if (--sd->ag_cnt >= 0)
  return;
 sd->ag_cnt = AG_CNT_START;

 delta = atomic_read(&sd->avg_lum);
 gspca_dbg(gspca_dev, D_FRAM, "mean lum %d\n", delta);

 if (sd->sensor == SENSOR_PO2030N) {
  gspca_expo_autogain(gspca_dev, delta, luma_mean, luma_delta,
     15, 1024);
  return;
 }

 if (delta < luma_mean - luma_delta ||
     delta > luma_mean + luma_delta) {
  switch (sd->sensor) {
  case 131:
   expotimes = sd->exposure;
   expotimes += (luma_mean - delta) >> 6;
   if (expotimes < 0)
    expotimes = 0;
   sd->exposure = expo_adjust(gspca_dev,
         (unsigned int) expotimes);
   break;
  case 130:
   expotimes = sd->exposure >> 8;
   expotimes += (luma_mean - delta) >> 4;
   if (expotimes < 0)
    expotimes = 0;
   sd->exposure = expo_adjust(gspca_dev,
     (unsigned int) (expotimes << 8));
   break;
  case 128:
  case 129:
   expotimes = sd->exposure;
   expotimes += (luma_mean - delta) >> 2;
   if (expotimes < 0)
    expotimes = 0;
   sd->exposure = expo_adjust(gspca_dev,
         (unsigned int) expotimes);
   setredblue(gspca_dev);
   break;
  default:



   expotimes = sd->exposure;
   expotimes += (luma_mean - delta) >> 6;
   if (expotimes < 0)
    expotimes = 0;
   sd->exposure = expo_adjust(gspca_dev,
         (unsigned int) expotimes);
   setredblue(gspca_dev);
   break;
  }
 }
}
