
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_capability {int capabilities; int bus_info; int card; int driver; } ;
struct file {int dummy; } ;
struct dvb_usb_device {TYPE_3__* udev; } ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;
struct TYPE_4__ {char* name; } ;


 int V4L2_CAP_DEVICE_CAPS ;
 int radiocaps ;
 int strscpy (int ,char*,int) ;
 int usb_make_path (TYPE_3__*,int ,int) ;
 struct dvb_usb_device* video_drvdata (struct file*) ;
 int videocaps ;

__attribute__((used)) static int cxusb_medion_v_querycap(struct file *file, void *fh,
       struct v4l2_capability *cap)
{
 struct dvb_usb_device *dvbdev = video_drvdata(file);

 strscpy(cap->driver, dvbdev->udev->dev.driver->name,
  sizeof(cap->driver));
 strscpy(cap->card, "Medion 95700", sizeof(cap->card));
 usb_make_path(dvbdev->udev, cap->bus_info, sizeof(cap->bus_info));

 cap->capabilities = videocaps | radiocaps | V4L2_CAP_DEVICE_CAPS;

 return 0;
}
