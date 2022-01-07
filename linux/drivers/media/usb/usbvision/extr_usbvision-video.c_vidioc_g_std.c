
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct usb_usbvision {int tvnorm_id; } ;
struct file {int dummy; } ;


 struct usb_usbvision* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_std(struct file *file, void *priv, v4l2_std_id *id)
{
 struct usb_usbvision *usbvision = video_drvdata(file);

 *id = usbvision->tvnorm_id;
 return 0;
}
