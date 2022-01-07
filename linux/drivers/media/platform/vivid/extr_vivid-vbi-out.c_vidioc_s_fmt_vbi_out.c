
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* queue; } ;
struct vivid_dev {int stream_sliced_vbi_out; TYPE_2__ vbi_out_dev; int vb_vbi_out_q; } ;
struct v4l2_format {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int type; } ;


 int EBUSY ;
 int V4L2_BUF_TYPE_VBI_OUTPUT ;
 scalar_t__ vb2_is_busy (int *) ;
 struct vivid_dev* video_drvdata (struct file*) ;
 int vidioc_g_fmt_vbi_out (struct file*,void*,struct v4l2_format*) ;

int vidioc_s_fmt_vbi_out(struct file *file, void *priv,
     struct v4l2_format *f)
{
 struct vivid_dev *dev = video_drvdata(file);
 int ret = vidioc_g_fmt_vbi_out(file, priv, f);

 if (ret)
  return ret;
 if (vb2_is_busy(&dev->vb_vbi_out_q))
  return -EBUSY;
 dev->stream_sliced_vbi_out = 0;
 dev->vbi_out_dev.queue->type = V4L2_BUF_TYPE_VBI_OUTPUT;
 return 0;
}
