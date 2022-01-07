
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int capabilities; int bus_info; int card; int driver; } ;
struct usb_interface {int dev; } ;
struct TYPE_2__ {int name; } ;
struct hackrf_dev {int udev; TYPE_1__ rx_vdev; struct usb_interface* intf; } ;
struct file {int dummy; } ;


 int KBUILD_MODNAME ;
 int V4L2_CAP_DEVICE_CAPS ;
 int V4L2_CAP_MODULATOR ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_SDR_CAPTURE ;
 int V4L2_CAP_SDR_OUTPUT ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_TUNER ;
 int dev_dbg (int *,char*) ;
 int strscpy (int ,int ,int) ;
 int usb_make_path (int ,int ,int) ;
 struct hackrf_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int hackrf_querycap(struct file *file, void *fh,
  struct v4l2_capability *cap)
{
 struct hackrf_dev *dev = video_drvdata(file);
 struct usb_interface *intf = dev->intf;

 dev_dbg(&intf->dev, "\n");

 cap->capabilities = V4L2_CAP_SDR_CAPTURE | V4L2_CAP_TUNER |
       V4L2_CAP_SDR_OUTPUT | V4L2_CAP_MODULATOR |
       V4L2_CAP_STREAMING | V4L2_CAP_READWRITE |
       V4L2_CAP_DEVICE_CAPS;
 strscpy(cap->driver, KBUILD_MODNAME, sizeof(cap->driver));
 strscpy(cap->card, dev->rx_vdev.name, sizeof(cap->card));
 usb_make_path(dev->udev, cap->bus_info, sizeof(cap->bus_info));

 return 0;
}
