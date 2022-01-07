
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pixelformat; } ;
struct TYPE_5__ {TYPE_1__ fmt; } ;
struct vivid_dev {void* overlay_cap_owner; TYPE_3__* fmt_cap; TYPE_2__ fb_cap; int * fb_vbase_cap; scalar_t__ multiplanar; } ;
struct file {int dummy; } ;
struct TYPE_6__ {scalar_t__ fourcc; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOTTY ;
 int dprintk (struct vivid_dev*,int,char*) ;
 struct vivid_dev* video_drvdata (struct file*) ;

int vivid_vid_cap_overlay(struct file *file, void *fh, unsigned i)
{
 struct vivid_dev *dev = video_drvdata(file);

 if (dev->multiplanar)
  return -ENOTTY;

 if (i && dev->fb_vbase_cap == ((void*)0))
  return -EINVAL;

 if (i && dev->fb_cap.fmt.pixelformat != dev->fmt_cap->fourcc) {
  dprintk(dev, 1, "mismatch between overlay and video capture pixelformats\n");
  return -EINVAL;
 }

 if (dev->overlay_cap_owner && dev->overlay_cap_owner != fh)
  return -EBUSY;
 dev->overlay_cap_owner = i ? fh : ((void*)0);
 return 0;
}
