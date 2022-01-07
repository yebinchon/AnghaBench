
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct TYPE_3__ {int height; int width; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct stk1160_decimate_ctrl {int dummy; } ;
struct stk1160 {int height; int width; struct vb2_queue vb_vidq; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int stk1160_set_fmt (struct stk1160*,struct stk1160_decimate_ctrl*) ;
 int stk1160_try_fmt (struct stk1160*,struct v4l2_format*,struct stk1160_decimate_ctrl*) ;
 scalar_t__ vb2_is_busy (struct vb2_queue*) ;
 struct stk1160* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_fmt_vid_cap(struct file *file, void *priv,
     struct v4l2_format *f)
{
 struct stk1160 *dev = video_drvdata(file);
 struct vb2_queue *q = &dev->vb_vidq;
 struct stk1160_decimate_ctrl ctrl;
 int rc;

 if (vb2_is_busy(q))
  return -EBUSY;

 rc = stk1160_try_fmt(dev, f, &ctrl);
 if (rc < 0)
  return rc;
 dev->width = f->fmt.pix.width;
 dev->height = f->fmt.pix.height;
 stk1160_set_fmt(dev, &ctrl);

 return 0;
}
