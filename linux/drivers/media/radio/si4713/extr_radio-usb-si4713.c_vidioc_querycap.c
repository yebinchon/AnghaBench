
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int bus_info; int card; int driver; } ;
struct si4713_usb_device {int usbdev; } ;
struct file {int dummy; } ;


 int strscpy (int ,char*,int) ;
 int usb_make_path (int ,int ,int) ;
 struct si4713_usb_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
     struct v4l2_capability *v)
{
 struct si4713_usb_device *radio = video_drvdata(file);

 strscpy(v->driver, "radio-usb-si4713", sizeof(v->driver));
 strscpy(v->card, "Si4713 FM Transmitter", sizeof(v->card));
 usb_make_path(radio->usbdev, v->bus_info, sizeof(v->bus_info));
 return 0;
}
