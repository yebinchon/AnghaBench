
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int dummy; } ;
struct sd {int dummy; } ;
struct cam {scalar_t__ nmodes; int * cam_mode; } ;
struct gspca_dev {struct cam cam; } ;


 scalar_t__ dump_bridge ;
 int gspca_err (struct gspca_dev*,char*) ;
 int m5602_dump_bridge (struct sd*) ;
 int m5602_probe_sensor (struct sd*) ;

__attribute__((used)) static int m5602_configure(struct gspca_dev *gspca_dev,
      const struct usb_device_id *id)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct cam *cam;
 int err;

 cam = &gspca_dev->cam;

 if (dump_bridge)
  m5602_dump_bridge(sd);


 err = m5602_probe_sensor(sd);
 if (err)
  goto fail;

 return 0;

fail:
 gspca_err(gspca_dev, "ALi m5602 webcam failed\n");
 cam->cam_mode = ((void*)0);
 cam->nmodes = 0;

 return err;
}
