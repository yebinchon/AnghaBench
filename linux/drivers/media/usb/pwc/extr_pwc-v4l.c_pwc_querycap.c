
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int bus_info; int card; int driver; } ;
struct TYPE_2__ {int name; } ;
struct pwc_device {int udev; TYPE_1__ vdev; } ;
struct file {int dummy; } ;


 int PWC_NAME ;
 int strscpy (int ,int ,int) ;
 int usb_make_path (int ,int ,int) ;
 struct pwc_device* video_drvdata (struct file*) ;

__attribute__((used)) static int pwc_querycap(struct file *file, void *fh, struct v4l2_capability *cap)
{
 struct pwc_device *pdev = video_drvdata(file);

 strscpy(cap->driver, PWC_NAME, sizeof(cap->driver));
 strscpy(cap->card, pdev->vdev.name, sizeof(cap->card));
 usb_make_path(pdev->udev, cap->bus_info, sizeof(cap->bus_info));
 return 0;
}
