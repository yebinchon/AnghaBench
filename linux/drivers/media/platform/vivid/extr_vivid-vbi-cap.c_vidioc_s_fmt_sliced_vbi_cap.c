
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* queue; } ;
struct vivid_dev {int stream_sliced_vbi_cap; TYPE_2__ vbi_cap_dev; int service_set_cap; int vb_vbi_cap_q; } ;
struct v4l2_sliced_vbi_format {int service_set; } ;
struct TYPE_6__ {struct v4l2_sliced_vbi_format sliced; } ;
struct v4l2_format {TYPE_3__ fmt; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int type; } ;


 int EBUSY ;
 int V4L2_BUF_TYPE_SLICED_VBI_CAPTURE ;
 scalar_t__ vb2_is_busy (int *) ;
 struct vivid_dev* video_drvdata (struct file*) ;
 int vidioc_try_fmt_sliced_vbi_cap (struct file*,void*,struct v4l2_format*) ;

int vidioc_s_fmt_sliced_vbi_cap(struct file *file, void *fh, struct v4l2_format *fmt)
{
 struct vivid_dev *dev = video_drvdata(file);
 struct v4l2_sliced_vbi_format *vbi = &fmt->fmt.sliced;
 int ret = vidioc_try_fmt_sliced_vbi_cap(file, fh, fmt);

 if (ret)
  return ret;
 if (!dev->stream_sliced_vbi_cap && vb2_is_busy(&dev->vb_vbi_cap_q))
  return -EBUSY;
 dev->service_set_cap = vbi->service_set;
 dev->stream_sliced_vbi_cap = 1;
 dev->vbi_cap_dev.queue->type = V4L2_BUF_TYPE_SLICED_VBI_CAPTURE;
 return 0;
}
