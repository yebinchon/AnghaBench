
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int driver_info; } ;
struct sd {int bridge; int sensor; int flags; int ag_cnt; int work; int quality; } ;
struct cam {int npkt; void* nmodes; void* cam_mode; } ;
struct gspca_dev {struct cam cam; } ;


 void* ARRAY_SIZE (void*) ;
 int INIT_WORK (int *,int ) ;
 int QUALITY_DEF ;
 int SENSOR_ADCM1700 ;
 void* cif_mode ;
 int qual_upd ;
 void* vga_mode ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
   const struct usb_device_id *id)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct cam *cam;

 sd->bridge = id->driver_info >> 16;
 sd->sensor = id->driver_info >> 8;
 sd->flags = id->driver_info;

 cam = &gspca_dev->cam;
 if (sd->sensor == SENSOR_ADCM1700) {
  cam->cam_mode = cif_mode;
  cam->nmodes = ARRAY_SIZE(cif_mode);
 } else {
  cam->cam_mode = vga_mode;
  cam->nmodes = ARRAY_SIZE(vga_mode);
 }
 cam->npkt = 24;

 sd->ag_cnt = -1;
 sd->quality = QUALITY_DEF;

 INIT_WORK(&sd->work, qual_upd);

 return 0;
}
