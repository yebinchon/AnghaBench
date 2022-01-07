
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int bus_info; int card; int driver; } ;
struct TYPE_2__ {int name; } ;
struct msi2500_dev {int udev; TYPE_1__ vdev; int dev; } ;
struct file {int dummy; } ;


 int KBUILD_MODNAME ;
 int dev_dbg (int ,char*) ;
 int strscpy (int ,int ,int) ;
 int usb_make_path (int ,int ,int) ;
 struct msi2500_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int msi2500_querycap(struct file *file, void *fh,
       struct v4l2_capability *cap)
{
 struct msi2500_dev *dev = video_drvdata(file);

 dev_dbg(dev->dev, "\n");

 strscpy(cap->driver, KBUILD_MODNAME, sizeof(cap->driver));
 strscpy(cap->card, dev->vdev.name, sizeof(cap->card));
 usb_make_path(dev->udev, cap->bus_info, sizeof(cap->bus_info));
 return 0;
}
