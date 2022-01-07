
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct v4l2_pix_format_mplane {TYPE_1__* plane_fmt; } ;
struct TYPE_6__ {int pixelformat; } ;
struct TYPE_7__ {TYPE_2__ pix; struct v4l2_pix_format_mplane pix_mp; } ;
struct v4l2_format {TYPE_3__ fmt; } ;
struct mtk_video_fmt {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_8__ {int fourcc; } ;
struct TYPE_5__ {scalar_t__ sizeimage; } ;


 int EINVAL ;
 size_t OUT_FMT_IDX ;
 int mtk_v4l2_err (char*) ;
 struct mtk_video_fmt* mtk_vdec_find_format (struct v4l2_format*) ;
 TYPE_4__* mtk_video_formats ;
 int vidioc_try_fmt (struct v4l2_format*,struct mtk_video_fmt const*) ;

__attribute__((used)) static int vidioc_try_fmt_vid_out_mplane(struct file *file, void *priv,
    struct v4l2_format *f)
{
 struct v4l2_pix_format_mplane *pix_fmt_mp = &f->fmt.pix_mp;
 const struct mtk_video_fmt *fmt;

 fmt = mtk_vdec_find_format(f);
 if (!fmt) {
  f->fmt.pix.pixelformat = mtk_video_formats[OUT_FMT_IDX].fourcc;
  fmt = mtk_vdec_find_format(f);
 }

 if (pix_fmt_mp->plane_fmt[0].sizeimage == 0) {
  mtk_v4l2_err("sizeimage of output format must be given");
  return -EINVAL;
 }

 return vidioc_try_fmt(f, fmt);
}
