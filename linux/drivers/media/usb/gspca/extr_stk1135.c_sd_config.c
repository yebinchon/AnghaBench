
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device_id {int dummy; } ;
struct TYPE_2__ {int nmodes; int cam_mode; } ;
struct gspca_dev {TYPE_1__ cam; } ;


 int ARRAY_SIZE (int ) ;
 int stk1135_modes ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
   const struct usb_device_id *id)
{
 gspca_dev->cam.cam_mode = stk1135_modes;
 gspca_dev->cam.nmodes = ARRAY_SIZE(stk1135_modes);
 return 0;
}
