
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int bus_info; int card; int driver; } ;
struct si470x_device {int usbdev; } ;
struct file {int dummy; } ;


 int DRIVER_CARD ;
 int DRIVER_NAME ;
 int strscpy (int ,int ,int) ;
 int usb_make_path (int ,int ,int) ;
 struct si470x_device* video_drvdata (struct file*) ;

__attribute__((used)) static int si470x_vidioc_querycap(struct file *file, void *priv,
      struct v4l2_capability *capability)
{
 struct si470x_device *radio = video_drvdata(file);

 strscpy(capability->driver, DRIVER_NAME, sizeof(capability->driver));
 strscpy(capability->card, DRIVER_CARD, sizeof(capability->card));
 usb_make_path(radio->usbdev, capability->bus_info,
   sizeof(capability->bus_info));
 return 0;
}
