
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int sensor; int work; } ;
struct gspca_dev {int present; int usb_lock; } ;


 int flush_work (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int send_unknown (struct gspca_dev*,int ) ;

__attribute__((used)) static void sd_stop0(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 mutex_unlock(&gspca_dev->usb_lock);
 flush_work(&sd->work);
 mutex_lock(&gspca_dev->usb_lock);
 if (!gspca_dev->present)
  return;
 send_unknown(gspca_dev, sd->sensor);
}
