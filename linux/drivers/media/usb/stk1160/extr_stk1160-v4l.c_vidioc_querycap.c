
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int bus_info; int card; int driver; } ;
struct stk1160 {int udev; } ;
struct file {int dummy; } ;


 int strscpy (int ,char*,int) ;
 int usb_make_path (int ,int ,int) ;
 struct stk1160* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_querycap(struct file *file,
  void *priv, struct v4l2_capability *cap)
{
 struct stk1160 *dev = video_drvdata(file);

 strscpy(cap->driver, "stk1160", sizeof(cap->driver));
 strscpy(cap->card, "stk1160", sizeof(cap->card));
 usb_make_path(dev->udev, cap->bus_info, sizeof(cap->bus_info));
 return 0;
}
