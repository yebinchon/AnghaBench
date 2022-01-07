
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {unsigned int ctl_input; } ;
struct file {int dummy; } ;


 struct usb_usbvision* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_input(struct file *file, void *priv, unsigned int *input)
{
 struct usb_usbvision *usbvision = video_drvdata(file);

 *input = usbvision->ctl_input;
 return 0;
}
