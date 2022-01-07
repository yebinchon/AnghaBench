
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* queue; } ;
struct vivid_dev {int stream_sliced_vbi_cap; TYPE_2__ vbi_cap_dev; int vb_vbi_cap_q; } ;
struct v4l2_format {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int type; } ;


 int EBUSY ;
 int V4L2_BUF_TYPE_VBI_CAPTURE ;
 scalar_t__ vb2_is_busy (int *) ;
 struct vivid_dev* video_drvdata (struct file*) ;
 int vidioc_g_fmt_vbi_cap (struct file*,void*,struct v4l2_format*) ;

int vidioc_s_fmt_vbi_cap(struct file *file, void *priv,
     struct v4l2_format *f)
{
 struct vivid_dev *dev = video_drvdata(file);
 int ret = vidioc_g_fmt_vbi_cap(file, priv, f);

 if (ret)
  return ret;
 if (dev->stream_sliced_vbi_cap && vb2_is_busy(&dev->vb_vbi_cap_q))
  return -EBUSY;
 dev->stream_sliced_vbi_cap = 0;
 dev->vbi_cap_dev.queue->type = V4L2_BUF_TYPE_VBI_CAPTURE;
 return 0;
}
