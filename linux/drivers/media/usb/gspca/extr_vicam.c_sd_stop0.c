
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int work_struct; } ;
struct gspca_dev {scalar_t__ present; int usb_lock; } ;


 int flush_work (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vicam_set_camera_power (struct gspca_dev*,int ) ;

__attribute__((used)) static void sd_stop0(struct gspca_dev *gspca_dev)
{
 struct sd *dev = (struct sd *)gspca_dev;


 mutex_unlock(&gspca_dev->usb_lock);

 flush_work(&dev->work_struct);
 mutex_lock(&gspca_dev->usb_lock);

 if (gspca_dev->present)
  vicam_set_camera_power(gspca_dev, 0);
}
