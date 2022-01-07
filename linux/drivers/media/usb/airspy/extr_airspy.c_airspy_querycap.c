
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int bus_info; int card; int driver; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct airspy {int udev; TYPE_1__ vdev; } ;


 int KBUILD_MODNAME ;
 int strscpy (int ,int ,int) ;
 int usb_make_path (int ,int ,int) ;
 struct airspy* video_drvdata (struct file*) ;

__attribute__((used)) static int airspy_querycap(struct file *file, void *fh,
  struct v4l2_capability *cap)
{
 struct airspy *s = video_drvdata(file);

 strscpy(cap->driver, KBUILD_MODNAME, sizeof(cap->driver));
 strscpy(cap->card, s->vdev.name, sizeof(cap->card));
 usb_make_path(s->udev, cap->bus_info, sizeof(cap->bus_info));
 return 0;
}
