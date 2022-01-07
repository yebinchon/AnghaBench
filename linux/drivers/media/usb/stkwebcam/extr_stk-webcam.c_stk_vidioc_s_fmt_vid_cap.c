
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sizeimage; int pixelformat; } ;
struct TYPE_6__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct TYPE_7__ {int mode; int palette; } ;
struct stk_camera {TYPE_3__ vsettings; int frame_size; scalar_t__ owner; } ;
struct file {int dummy; } ;
struct TYPE_8__ {int m; } ;


 int EBUSY ;
 int ENODEV ;
 int is_present (struct stk_camera*) ;
 scalar_t__ is_streaming (struct stk_camera*) ;
 int stk_free_buffers (struct stk_camera*) ;
 int stk_initialise (struct stk_camera*) ;
 int stk_setup_format (struct stk_camera*) ;
 TYPE_4__* stk_sizes ;
 int stk_try_fmt_vid_cap (struct file*,struct v4l2_format*,int*) ;
 struct stk_camera* video_drvdata (struct file*) ;

__attribute__((used)) static int stk_vidioc_s_fmt_vid_cap(struct file *filp,
  void *priv, struct v4l2_format *fmtd)
{
 int ret;
 int idx;
 struct stk_camera *dev = video_drvdata(filp);

 if (dev == ((void*)0))
  return -ENODEV;
 if (!is_present(dev))
  return -ENODEV;
 if (is_streaming(dev))
  return -EBUSY;
 if (dev->owner)
  return -EBUSY;
 ret = stk_try_fmt_vid_cap(filp, fmtd, &idx);
 if (ret)
  return ret;

 dev->vsettings.palette = fmtd->fmt.pix.pixelformat;
 stk_free_buffers(dev);
 dev->frame_size = fmtd->fmt.pix.sizeimage;
 dev->vsettings.mode = stk_sizes[idx].m;

 stk_initialise(dev);
 return stk_setup_format(dev);
}
