
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device_id {scalar_t__ driver_info; } ;
struct sd {scalar_t__ bridge; int framerate; } ;
struct TYPE_2__ {int mode_framerates; int nmodes; int cam_mode; } ;
struct gspca_dev {TYPE_1__ cam; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ BRIDGE_TP6800 ;
 int DEFAULT_FRAME_RATE ;
 int framerates ;
 int framerates_6810 ;
 int vga_mode ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
       const struct usb_device_id *id)
{
 struct sd *sd = (struct sd *) gspca_dev;

 sd->bridge = id->driver_info;

 gspca_dev->cam.cam_mode = vga_mode;
 gspca_dev->cam.nmodes = ARRAY_SIZE(vga_mode);
 gspca_dev->cam.mode_framerates = sd->bridge == BRIDGE_TP6800 ?
   framerates : framerates_6810;

 sd->framerate = DEFAULT_FRAME_RATE;
 return 0;
}
