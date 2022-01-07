
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int dummy; } ;
struct sd {int frame_rate; } ;
struct cam {int nmodes; int cam_mode; } ;
struct gspca_dev {struct cam cam; } ;


 int ARRAY_SIZE (int ) ;
 int DEFAULT_FRAME_RATE ;
 int ov772x_mode ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
       const struct usb_device_id *id)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct cam *cam;

 cam = &gspca_dev->cam;

 cam->cam_mode = ov772x_mode;
 cam->nmodes = ARRAY_SIZE(ov772x_mode);

 sd->frame_rate = DEFAULT_FRAME_RATE;

 return 0;
}
