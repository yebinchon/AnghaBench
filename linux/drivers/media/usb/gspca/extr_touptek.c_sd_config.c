
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device_id {int dummy; } ;
struct TYPE_2__ {int bulk_nurbs; int bulk; int bulk_size; scalar_t__ no_urb_create; int nmodes; int cam_mode; } ;
struct gspca_dev {TYPE_1__ cam; } ;


 int ARRAY_SIZE (int ) ;
 int BULK_SIZE ;
 int vga_mode ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
       const struct usb_device_id *id)
{
 gspca_dev->cam.cam_mode = vga_mode;
 gspca_dev->cam.nmodes = ARRAY_SIZE(vga_mode);


 gspca_dev->cam.no_urb_create = 0;
 gspca_dev->cam.bulk_nurbs = 4;

 gspca_dev->cam.bulk_size = BULK_SIZE;

 gspca_dev->cam.bulk = 1;

 return 0;
}
