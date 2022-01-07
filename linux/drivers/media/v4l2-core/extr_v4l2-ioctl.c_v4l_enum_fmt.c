
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct video_device {int device_caps; } ;
struct v4l2_ioctl_ops {int (* vidioc_enum_fmt_vid_cap ) (struct file*,void*,void*) ;int (* vidioc_enum_fmt_vid_overlay ) (struct file*,void*,void*) ;int (* vidioc_enum_fmt_vid_out ) (struct file*,void*,void*) ;int (* vidioc_enum_fmt_sdr_cap ) (struct file*,void*,void*) ;int (* vidioc_enum_fmt_sdr_out ) (struct file*,void*,void*) ;int (* vidioc_enum_fmt_meta_cap ) (struct file*,void*,void*) ;int (* vidioc_enum_fmt_meta_out ) (struct file*,void*,void*) ;} ;
struct v4l2_fmtdesc {int type; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_CAP_VIDEO_CAPTURE_MPLANE ;
 int V4L2_CAP_VIDEO_M2M_MPLANE ;
 int V4L2_CAP_VIDEO_OUTPUT_MPLANE ;
 int check_fmt (struct file*,int) ;
 int stub1 (struct file*,void*,void*) ;
 int stub2 (struct file*,void*,void*) ;
 int stub3 (struct file*,void*,void*) ;
 int stub4 (struct file*,void*,void*) ;
 int stub5 (struct file*,void*,void*) ;
 int stub6 (struct file*,void*,void*) ;
 int stub7 (struct file*,void*,void*) ;
 int unlikely (int) ;
 int v4l_fill_fmtdesc (struct v4l2_fmtdesc*) ;
 struct video_device* video_devdata (struct file*) ;

__attribute__((used)) static int v4l_enum_fmt(const struct v4l2_ioctl_ops *ops,
    struct file *file, void *fh, void *arg)
{
 struct video_device *vdev = video_devdata(file);
 struct v4l2_fmtdesc *p = arg;
 int ret = check_fmt(file, p->type);
 u32 cap_mask;

 if (ret)
  return ret;
 ret = -EINVAL;

 switch (p->type) {
 case 132:
 case 131:
  cap_mask = V4L2_CAP_VIDEO_CAPTURE_MPLANE |
      V4L2_CAP_VIDEO_M2M_MPLANE;
  if (!!(vdev->device_caps & cap_mask) !=
      (p->type == 131))
   break;

  if (unlikely(!ops->vidioc_enum_fmt_vid_cap))
   break;
  ret = ops->vidioc_enum_fmt_vid_cap(file, fh, arg);
  break;
 case 128:
  if (unlikely(!ops->vidioc_enum_fmt_vid_overlay))
   break;
  ret = ops->vidioc_enum_fmt_vid_overlay(file, fh, arg);
  break;
 case 130:
 case 129:
  cap_mask = V4L2_CAP_VIDEO_OUTPUT_MPLANE |
      V4L2_CAP_VIDEO_M2M_MPLANE;
  if (!!(vdev->device_caps & cap_mask) !=
      (p->type == 129))
   break;

  if (unlikely(!ops->vidioc_enum_fmt_vid_out))
   break;
  ret = ops->vidioc_enum_fmt_vid_out(file, fh, arg);
  break;
 case 134:
  if (unlikely(!ops->vidioc_enum_fmt_sdr_cap))
   break;
  ret = ops->vidioc_enum_fmt_sdr_cap(file, fh, arg);
  break;
 case 133:
  if (unlikely(!ops->vidioc_enum_fmt_sdr_out))
   break;
  ret = ops->vidioc_enum_fmt_sdr_out(file, fh, arg);
  break;
 case 136:
  if (unlikely(!ops->vidioc_enum_fmt_meta_cap))
   break;
  ret = ops->vidioc_enum_fmt_meta_cap(file, fh, arg);
  break;
 case 135:
  if (unlikely(!ops->vidioc_enum_fmt_meta_out))
   break;
  ret = ops->vidioc_enum_fmt_meta_out(file, fh, arg);
  break;
 }
 if (ret == 0)
  v4l_fill_fmtdesc(p);
 return ret;
}
