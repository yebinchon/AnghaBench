
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int bus_info; int card; int driver; } ;
struct stk_camera {int udev; } ;
struct file {int dummy; } ;


 int strscpy (int ,char*,int) ;
 int usb_make_path (int ,int ,int) ;
 struct stk_camera* video_drvdata (struct file*) ;

__attribute__((used)) static int stk_vidioc_querycap(struct file *filp,
  void *priv, struct v4l2_capability *cap)
{
 struct stk_camera *dev = video_drvdata(filp);

 strscpy(cap->driver, "stk", sizeof(cap->driver));
 strscpy(cap->card, "stk", sizeof(cap->card));
 usb_make_path(dev->udev, cap->bus_info, sizeof(cap->bus_info));
 return 0;
}
