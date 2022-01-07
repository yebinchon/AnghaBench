
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int field; int height; int width; int pixelformat; } ;
struct TYPE_6__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_3__ fmt; } ;
struct file {int dummy; } ;
struct cx88_core {int field; int height; int width; TYPE_1__* dvbdev; } ;
struct cx8800_dev {int fmt; int vb2_vbiq; int vb2_vidq; struct cx88_core* core; } ;
struct TYPE_4__ {int vb2_mpegq; } ;


 int EBUSY ;
 int format_by_fourcc (int ) ;
 scalar_t__ vb2_is_busy (int *) ;
 struct cx8800_dev* video_drvdata (struct file*) ;
 int vidioc_try_fmt_vid_cap (struct file*,void*,struct v4l2_format*) ;

__attribute__((used)) static int vidioc_s_fmt_vid_cap(struct file *file, void *priv,
    struct v4l2_format *f)
{
 struct cx8800_dev *dev = video_drvdata(file);
 struct cx88_core *core = dev->core;
 int err = vidioc_try_fmt_vid_cap(file, priv, f);

 if (err != 0)
  return err;
 if (vb2_is_busy(&dev->vb2_vidq) || vb2_is_busy(&dev->vb2_vbiq))
  return -EBUSY;
 if (core->dvbdev && vb2_is_busy(&core->dvbdev->vb2_mpegq))
  return -EBUSY;
 dev->fmt = format_by_fourcc(f->fmt.pix.pixelformat);
 core->width = f->fmt.pix.width;
 core->height = f->fmt.pix.height;
 core->field = f->fmt.pix.field;
 return 0;
}
