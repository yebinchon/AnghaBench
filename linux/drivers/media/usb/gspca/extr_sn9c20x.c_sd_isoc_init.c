
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct usb_interface {int num_altsetting; } ;
struct TYPE_4__ {int width; } ;
struct TYPE_6__ {TYPE_2__* cam_mode; } ;
struct gspca_dev {int alt; TYPE_1__ pixfmt; int iface; int dev; scalar_t__ curr_mode; TYPE_3__ cam; } ;
struct TYPE_5__ {int priv; } ;


 int MODE_JPEG ;
 int MODE_RAW ;
 int pr_warn (char*,int) ;
 struct usb_interface* usb_ifnum_to_if (int ,int ) ;

__attribute__((used)) static int sd_isoc_init(struct gspca_dev *gspca_dev)
{
 struct usb_interface *intf;
 u32 flags = gspca_dev->cam.cam_mode[(int)gspca_dev->curr_mode].priv;






 if (!(flags & (MODE_RAW | MODE_JPEG))) {
  intf = usb_ifnum_to_if(gspca_dev->dev, gspca_dev->iface);

  if (intf->num_altsetting != 9) {
   pr_warn("sn9c20x camera with unknown number of alt settings (%d), please report!\n",
    intf->num_altsetting);
   gspca_dev->alt = intf->num_altsetting;
   return 0;
  }

  switch (gspca_dev->pixfmt.width) {
  case 160:
   gspca_dev->alt = 2;
   break;
  case 320:
   gspca_dev->alt = 6;
   break;
  default:
   gspca_dev->alt = 9;
   break;
  }
 }

 return 0;
}
