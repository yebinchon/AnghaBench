
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int driver_info; int idVendor; int idProduct; } ;
struct sd {int bridge; int flags; int sensor; } ;
struct gspca_dev {int dummy; } ;


 int SENSOR_POxxxx ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
   const struct usb_device_id *id)
{
 struct sd *sd = (struct sd *) gspca_dev;

 sd->bridge = id->driver_info >> 8;
 sd->flags = id->driver_info & 0xff;

 if (id->idVendor == 0x046d &&
     (id->idProduct == 0x0892 || id->idProduct == 0x0896))
  sd->sensor = SENSOR_POxxxx;

 return 0;
}
