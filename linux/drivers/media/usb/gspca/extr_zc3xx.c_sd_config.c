
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int idProduct; int driver_info; } ;
struct sd {int work; int reg08; int sensor; int bridge; } ;
struct gspca_dev {int dummy; } ;


 int BRIDGE_ZC301 ;
 int BRIDGE_ZC303 ;
 int INIT_WORK (int *,int ) ;
 int REG08_DEF ;
 int transfer_update ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
   const struct usb_device_id *id)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (id->idProduct == 0x301b)
  sd->bridge = BRIDGE_ZC301;
 else
  sd->bridge = BRIDGE_ZC303;


 sd->sensor = id->driver_info;

 sd->reg08 = REG08_DEF;

 INIT_WORK(&sd->work, transfer_update);

 return 0;
}
