
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int driver_info; } ;
struct sd {int sensor; int i2c_addr; int flags; int i2c_intf; int exposure_step; int work; scalar_t__ older_step; scalar_t__ old_step; } ;
struct cam {int needs_full_bandwidth; void* nmodes; void* cam_mode; } ;
struct gspca_dev {struct cam cam; } ;


 void* ARRAY_SIZE (void*) ;
 int INIT_WORK (int *,int ) ;






 void* mono_mode ;
 int qual_upd ;
 void* sxga_mode ;
 void* vga_mode ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
   const struct usb_device_id *id)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct cam *cam;

 cam = &gspca_dev->cam;
 cam->needs_full_bandwidth = 1;

 sd->sensor = id->driver_info >> 8;
 sd->i2c_addr = id->driver_info;
 sd->flags = id->driver_info >> 16;
 sd->i2c_intf = 0x80;

 switch (sd->sensor) {
 case 130:
 case 131:
 case 129:
 case 128:
  cam->cam_mode = sxga_mode;
  cam->nmodes = ARRAY_SIZE(sxga_mode);
  break;
 case 132:
  cam->cam_mode = mono_mode;
  cam->nmodes = ARRAY_SIZE(mono_mode);
  break;
 case 133:
  sd->i2c_intf = 0x81;

 default:
  cam->cam_mode = vga_mode;
  cam->nmodes = ARRAY_SIZE(vga_mode);
  break;
 }

 sd->old_step = 0;
 sd->older_step = 0;
 sd->exposure_step = 16;

 INIT_WORK(&sd->work, qual_upd);

 return 0;
}
