
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int work_struct; } ;
struct gspca_dev {int dummy; } ;


 int schedule_work (int *) ;
 int vicam_set_camera_power (struct gspca_dev*,int) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *)gspca_dev;
 int ret;

 ret = vicam_set_camera_power(gspca_dev, 1);
 if (ret < 0)
  return ret;

 schedule_work(&sd->work_struct);

 return 0;
}
