
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int dummy; } ;
struct sd {int work_struct; } ;
struct cam {int bulk; int bulk_size; int nmodes; int cam_mode; } ;
struct gspca_dev {struct cam cam; } ;


 int ARRAY_SIZE (int ) ;
 int INIT_WORK (int *,int ) ;
 int vicam_dostream ;
 int vicam_mode ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
  const struct usb_device_id *id)
{
 struct cam *cam = &gspca_dev->cam;
 struct sd *sd = (struct sd *)gspca_dev;


 cam->bulk = 1;
 cam->bulk_size = 64;
 cam->cam_mode = vicam_mode;
 cam->nmodes = ARRAY_SIZE(vicam_mode);

 INIT_WORK(&sd->work_struct, vicam_dostream);

 return 0;
}
