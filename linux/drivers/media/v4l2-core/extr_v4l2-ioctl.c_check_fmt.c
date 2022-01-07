
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {scalar_t__ vfl_type; scalar_t__ vfl_dir; struct v4l2_ioctl_ops* ioctl_ops; } ;
struct v4l2_ioctl_ops {int vidioc_g_fmt_meta_out; int vidioc_g_fmt_meta_cap; int vidioc_g_fmt_sdr_out; int vidioc_g_fmt_sdr_cap; int vidioc_g_fmt_sliced_vbi_out; int vidioc_g_fmt_sliced_vbi_cap; int vidioc_g_fmt_vbi_out; int vidioc_g_fmt_vbi_cap; int vidioc_g_fmt_vid_out_overlay; int vidioc_g_fmt_vid_out_mplane; int vidioc_g_fmt_vid_out; int vidioc_g_fmt_vid_overlay; int vidioc_g_fmt_vid_cap_mplane; int vidioc_g_fmt_vid_cap; } ;
struct file {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int EINVAL ;
 scalar_t__ VFL_DIR_RX ;
 scalar_t__ VFL_DIR_TX ;
 scalar_t__ VFL_TYPE_GRABBER ;
 scalar_t__ VFL_TYPE_SDR ;
 scalar_t__ VFL_TYPE_TOUCH ;
 scalar_t__ VFL_TYPE_VBI ;
 struct video_device* video_devdata (struct file*) ;

__attribute__((used)) static int check_fmt(struct file *file, enum v4l2_buf_type type)
{
 struct video_device *vfd = video_devdata(file);
 const struct v4l2_ioctl_ops *ops = vfd->ioctl_ops;
 bool is_vid = vfd->vfl_type == VFL_TYPE_GRABBER;
 bool is_vbi = vfd->vfl_type == VFL_TYPE_VBI;
 bool is_sdr = vfd->vfl_type == VFL_TYPE_SDR;
 bool is_tch = vfd->vfl_type == VFL_TYPE_TOUCH;
 bool is_rx = vfd->vfl_dir != VFL_DIR_TX;
 bool is_tx = vfd->vfl_dir != VFL_DIR_RX;

 if (ops == ((void*)0))
  return -EINVAL;

 switch (type) {
 case 133:
  if ((is_vid || is_tch) && is_rx &&
      (ops->vidioc_g_fmt_vid_cap || ops->vidioc_g_fmt_vid_cap_mplane))
   return 0;
  break;
 case 132:
  if (is_vid && is_rx && ops->vidioc_g_fmt_vid_cap_mplane)
   return 0;
  break;
 case 128:
  if (is_vid && is_rx && ops->vidioc_g_fmt_vid_overlay)
   return 0;
  break;
 case 131:
  if (is_vid && is_tx &&
      (ops->vidioc_g_fmt_vid_out || ops->vidioc_g_fmt_vid_out_mplane))
   return 0;
  break;
 case 130:
  if (is_vid && is_tx && ops->vidioc_g_fmt_vid_out_mplane)
   return 0;
  break;
 case 129:
  if (is_vid && is_tx && ops->vidioc_g_fmt_vid_out_overlay)
   return 0;
  break;
 case 135:
  if (is_vbi && is_rx && ops->vidioc_g_fmt_vbi_cap)
   return 0;
  break;
 case 134:
  if (is_vbi && is_tx && ops->vidioc_g_fmt_vbi_out)
   return 0;
  break;
 case 137:
  if (is_vbi && is_rx && ops->vidioc_g_fmt_sliced_vbi_cap)
   return 0;
  break;
 case 136:
  if (is_vbi && is_tx && ops->vidioc_g_fmt_sliced_vbi_out)
   return 0;
  break;
 case 139:
  if (is_sdr && is_rx && ops->vidioc_g_fmt_sdr_cap)
   return 0;
  break;
 case 138:
  if (is_sdr && is_tx && ops->vidioc_g_fmt_sdr_out)
   return 0;
  break;
 case 141:
  if (is_vid && is_rx && ops->vidioc_g_fmt_meta_cap)
   return 0;
  break;
 case 140:
  if (is_vid && is_tx && ops->vidioc_g_fmt_meta_out)
   return 0;
  break;
 default:
  break;
 }
 return -EINVAL;
}
