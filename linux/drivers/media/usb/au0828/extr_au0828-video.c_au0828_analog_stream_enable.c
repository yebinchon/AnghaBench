
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {TYPE_2__* cur_altsetting; } ;
struct au0828_dev {int height; int width; int usbdev; int dev_state; } ;
struct TYPE_3__ {int bAlternateSetting; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;


 int AU0828_SENSORCTRL_100 ;
 int AU0828_SENSORCTRL_VBI_103 ;
 int DEV_DISCONNECTED ;
 int EBUSY ;
 int ENODEV ;
 int au0828_writereg (struct au0828_dev*,int,int) ;
 int dprintk (int,char*) ;
 int pr_info (char*) ;
 scalar_t__ test_bit (int ,int *) ;
 struct usb_interface* usb_ifnum_to_if (int ,int ) ;
 int usb_set_interface (int ,int ,int) ;

__attribute__((used)) static int au0828_analog_stream_enable(struct au0828_dev *d)
{
 struct usb_interface *iface;
 int ret, h, w;

 dprintk(1, "au0828_analog_stream_enable called\n");

 if (test_bit(DEV_DISCONNECTED, &d->dev_state))
  return -ENODEV;

 iface = usb_ifnum_to_if(d->usbdev, 0);
 if (iface && iface->cur_altsetting->desc.bAlternateSetting != 5) {
  dprintk(1, "Changing intf#0 to alt 5\n");

  ret = usb_set_interface(d->usbdev, 0, 5);
  if (ret < 0) {
   pr_info("Au0828 can't set alt setting to 5!\n");
   return -EBUSY;
  }
 }

 h = d->height / 2 + 2;
 w = d->width * 2;

 au0828_writereg(d, AU0828_SENSORCTRL_VBI_103, 0x00);
 au0828_writereg(d, 0x106, 0x00);

 au0828_writereg(d, 0x110, 0x00);
 au0828_writereg(d, 0x111, 0x00);
 au0828_writereg(d, 0x114, w & 0xff);
 au0828_writereg(d, 0x115, w >> 8);

 au0828_writereg(d, 0x112, 0x00);
 au0828_writereg(d, 0x113, 0x00);
 au0828_writereg(d, 0x116, h & 0xff);
 au0828_writereg(d, 0x117, h >> 8);
 au0828_writereg(d, AU0828_SENSORCTRL_100, 0xb3);

 return 0;
}
