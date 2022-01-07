
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct gspca_dev {int iface; struct usb_device* dev; } ;


 int D_STREAM ;
 int gspca_dbg (struct gspca_dev*,int ,char*) ;
 int stk1135_camera_disable (struct gspca_dev*) ;
 int usb_set_interface (struct usb_device*,int ,int ) ;

__attribute__((used)) static void sd_stopN(struct gspca_dev *gspca_dev)
{
 struct usb_device *dev = gspca_dev->dev;

 usb_set_interface(dev, gspca_dev->iface, 0);

 stk1135_camera_disable(gspca_dev);

 gspca_dbg(gspca_dev, D_STREAM, "camera stopped\n");
}
