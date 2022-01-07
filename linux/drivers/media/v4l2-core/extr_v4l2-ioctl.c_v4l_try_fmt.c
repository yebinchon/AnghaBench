
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct video_device {int vfl_type; } ;
struct v4l2_ioctl_ops {int (* vidioc_try_fmt_vid_cap ) (struct file*,void*,void*) ;int (* vidioc_try_fmt_vid_cap_mplane ) (struct file*,void*,void*) ;int (* vidioc_try_fmt_vid_overlay ) (struct file*,void*,void*) ;int (* vidioc_try_fmt_vbi_cap ) (struct file*,void*,void*) ;int (* vidioc_try_fmt_sliced_vbi_cap ) (struct file*,void*,void*) ;int (* vidioc_try_fmt_vid_out ) (struct file*,void*,void*) ;int (* vidioc_try_fmt_vid_out_mplane ) (struct file*,void*,void*) ;int (* vidioc_try_fmt_vid_out_overlay ) (struct file*,void*,void*) ;int (* vidioc_try_fmt_vbi_out ) (struct file*,void*,void*) ;int (* vidioc_try_fmt_sliced_vbi_out ) (struct file*,void*,void*) ;int (* vidioc_try_fmt_sdr_cap ) (struct file*,void*,void*) ;int (* vidioc_try_fmt_sdr_out ) (struct file*,void*,void*) ;int (* vidioc_try_fmt_meta_cap ) (struct file*,void*,void*) ;int (* vidioc_try_fmt_meta_out ) (struct file*,void*,void*) ;} ;
struct TYPE_7__ {unsigned int num_planes; struct v4l2_format* plane_fmt; } ;
struct TYPE_9__ {void* priv; } ;
struct TYPE_8__ {TYPE_2__ pix_mp; TYPE_4__ pix; } ;
struct v4l2_format {int type; TYPE_3__ fmt; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int xfer_func; } ;
struct TYPE_10__ {int meta; int sdr; int sliced; int vbi; int win; TYPE_1__ pix_mp; int pix; } ;


 int CLEAR_AFTER_FIELD (struct v4l2_format*,int ) ;
 int EINVAL ;
 void* V4L2_PIX_FMT_PRIV_MAGIC ;
 int VFL_TYPE_TOUCH ;
 int bytesperline ;
 int check_fmt (struct file*,int) ;
 TYPE_5__ fmt ;
 int stub1 (struct file*,void*,void*) ;
 int stub10 (struct file*,void*,void*) ;
 int stub11 (struct file*,void*,void*) ;
 int stub12 (struct file*,void*,void*) ;
 int stub13 (struct file*,void*,void*) ;
 int stub14 (struct file*,void*,void*) ;
 int stub2 (struct file*,void*,void*) ;
 int stub3 (struct file*,void*,void*) ;
 int stub4 (struct file*,void*,void*) ;
 int stub5 (struct file*,void*,void*) ;
 int stub6 (struct file*,void*,void*) ;
 int stub7 (struct file*,void*,void*) ;
 int stub8 (struct file*,void*,void*) ;
 int stub9 (struct file*,void*,void*) ;
 int unlikely (int) ;
 int v4l_pix_format_touch (TYPE_4__*) ;
 int v4l_sanitize_format (struct v4l2_format*) ;
 struct video_device* video_devdata (struct file*) ;

__attribute__((used)) static int v4l_try_fmt(const struct v4l2_ioctl_ops *ops,
    struct file *file, void *fh, void *arg)
{
 struct v4l2_format *p = arg;
 struct video_device *vfd = video_devdata(file);
 int ret = check_fmt(file, p->type);
 unsigned int i;

 if (ret)
  return ret;

 v4l_sanitize_format(p);

 switch (p->type) {
 case 133:
  if (unlikely(!ops->vidioc_try_fmt_vid_cap))
   break;
  CLEAR_AFTER_FIELD(p, fmt.pix);
  ret = ops->vidioc_try_fmt_vid_cap(file, fh, arg);

  p->fmt.pix.priv = V4L2_PIX_FMT_PRIV_MAGIC;
  if (vfd->vfl_type == VFL_TYPE_TOUCH)
   v4l_pix_format_touch(&p->fmt.pix);
  return ret;
 case 132:
  if (unlikely(!ops->vidioc_try_fmt_vid_cap_mplane))
   break;
  CLEAR_AFTER_FIELD(p, fmt.pix_mp.xfer_func);
  for (i = 0; i < p->fmt.pix_mp.num_planes; i++)
   CLEAR_AFTER_FIELD(&p->fmt.pix_mp.plane_fmt[i],
       bytesperline);
  return ops->vidioc_try_fmt_vid_cap_mplane(file, fh, arg);
 case 128:
  if (unlikely(!ops->vidioc_try_fmt_vid_overlay))
   break;
  CLEAR_AFTER_FIELD(p, fmt.win);
  return ops->vidioc_try_fmt_vid_overlay(file, fh, arg);
 case 135:
  if (unlikely(!ops->vidioc_try_fmt_vbi_cap))
   break;
  CLEAR_AFTER_FIELD(p, fmt.vbi);
  return ops->vidioc_try_fmt_vbi_cap(file, fh, arg);
 case 137:
  if (unlikely(!ops->vidioc_try_fmt_sliced_vbi_cap))
   break;
  CLEAR_AFTER_FIELD(p, fmt.sliced);
  return ops->vidioc_try_fmt_sliced_vbi_cap(file, fh, arg);
 case 131:
  if (unlikely(!ops->vidioc_try_fmt_vid_out))
   break;
  CLEAR_AFTER_FIELD(p, fmt.pix);
  ret = ops->vidioc_try_fmt_vid_out(file, fh, arg);

  p->fmt.pix.priv = V4L2_PIX_FMT_PRIV_MAGIC;
  return ret;
 case 130:
  if (unlikely(!ops->vidioc_try_fmt_vid_out_mplane))
   break;
  CLEAR_AFTER_FIELD(p, fmt.pix_mp.xfer_func);
  for (i = 0; i < p->fmt.pix_mp.num_planes; i++)
   CLEAR_AFTER_FIELD(&p->fmt.pix_mp.plane_fmt[i],
       bytesperline);
  return ops->vidioc_try_fmt_vid_out_mplane(file, fh, arg);
 case 129:
  if (unlikely(!ops->vidioc_try_fmt_vid_out_overlay))
   break;
  CLEAR_AFTER_FIELD(p, fmt.win);
  return ops->vidioc_try_fmt_vid_out_overlay(file, fh, arg);
 case 134:
  if (unlikely(!ops->vidioc_try_fmt_vbi_out))
   break;
  CLEAR_AFTER_FIELD(p, fmt.vbi);
  return ops->vidioc_try_fmt_vbi_out(file, fh, arg);
 case 136:
  if (unlikely(!ops->vidioc_try_fmt_sliced_vbi_out))
   break;
  CLEAR_AFTER_FIELD(p, fmt.sliced);
  return ops->vidioc_try_fmt_sliced_vbi_out(file, fh, arg);
 case 139:
  if (unlikely(!ops->vidioc_try_fmt_sdr_cap))
   break;
  CLEAR_AFTER_FIELD(p, fmt.sdr);
  return ops->vidioc_try_fmt_sdr_cap(file, fh, arg);
 case 138:
  if (unlikely(!ops->vidioc_try_fmt_sdr_out))
   break;
  CLEAR_AFTER_FIELD(p, fmt.sdr);
  return ops->vidioc_try_fmt_sdr_out(file, fh, arg);
 case 141:
  if (unlikely(!ops->vidioc_try_fmt_meta_cap))
   break;
  CLEAR_AFTER_FIELD(p, fmt.meta);
  return ops->vidioc_try_fmt_meta_cap(file, fh, arg);
 case 140:
  if (unlikely(!ops->vidioc_try_fmt_meta_out))
   break;
  CLEAR_AFTER_FIELD(p, fmt.meta);
  return ops->vidioc_try_fmt_meta_out(file, fh, arg);
 }
 return -EINVAL;
}
