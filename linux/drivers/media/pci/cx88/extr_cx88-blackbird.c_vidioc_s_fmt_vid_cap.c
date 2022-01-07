
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int width; int height; int field; } ;
struct TYPE_6__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_3__ fmt; } ;
struct file {int dummy; } ;
struct cx88_core {int field; int height; int width; TYPE_1__* v4ldev; } ;
struct cx8802_dev {int vb2_mpegq; struct cx88_core* core; } ;
struct TYPE_4__ {int vb2_vbiq; int vb2_vidq; } ;


 int CX2341X_ENC_SET_FRAME_SIZE ;
 int EBUSY ;
 int blackbird_api_cmd (struct cx8802_dev*,int ,int,int ,int ,int ) ;
 int cx88_set_scale (struct cx88_core*,int ,int ,int ) ;
 scalar_t__ vb2_is_busy (int *) ;
 struct cx8802_dev* video_drvdata (struct file*) ;
 int vidioc_try_fmt_vid_cap (struct file*,void*,struct v4l2_format*) ;

__attribute__((used)) static int vidioc_s_fmt_vid_cap(struct file *file, void *priv,
    struct v4l2_format *f)
{
 struct cx8802_dev *dev = video_drvdata(file);
 struct cx88_core *core = dev->core;

 if (vb2_is_busy(&dev->vb2_mpegq))
  return -EBUSY;
 if (core->v4ldev && (vb2_is_busy(&core->v4ldev->vb2_vidq) ||
        vb2_is_busy(&core->v4ldev->vb2_vbiq)))
  return -EBUSY;
 vidioc_try_fmt_vid_cap(file, priv, f);
 core->width = f->fmt.pix.width;
 core->height = f->fmt.pix.height;
 core->field = f->fmt.pix.field;
 cx88_set_scale(core, f->fmt.pix.width, f->fmt.pix.height,
         f->fmt.pix.field);
 blackbird_api_cmd(dev, CX2341X_ENC_SET_FRAME_SIZE, 2, 0,
     f->fmt.pix.height, f->fmt.pix.width);
 return 0;
}
