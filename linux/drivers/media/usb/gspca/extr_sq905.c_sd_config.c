
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int dummy; } ;
struct sd {int work_struct; } ;
struct cam {int bulk; int bulk_size; } ;
struct gspca_dev {struct cam cam; } ;


 int INIT_WORK (int *,int ) ;
 int sq905_dostream ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
  const struct usb_device_id *id)
{
 struct cam *cam = &gspca_dev->cam;
 struct sd *dev = (struct sd *) gspca_dev;


 cam->bulk = 1;
 cam->bulk_size = 64;

 INIT_WORK(&dev->work_struct, sq905_dostream);

 return 0;
}
