
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int xfer_func; int quantization; int ycbcr_enc; scalar_t__ colorspace; } ;
struct TYPE_7__ {int pixelformat; } ;
struct TYPE_6__ {TYPE_1__ pix_mp; TYPE_3__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct mtk_video_fmt {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_8__ {int fourcc; } ;


 size_t OUT_FMT_IDX ;
 scalar_t__ V4L2_COLORSPACE_REC709 ;
 int V4L2_QUANTIZATION_DEFAULT ;
 int V4L2_XFER_FUNC_DEFAULT ;
 int V4L2_YCBCR_ENC_DEFAULT ;
 struct mtk_video_fmt* mtk_venc_find_format (struct v4l2_format*) ;
 TYPE_4__* mtk_video_formats ;
 int vidioc_try_fmt (struct v4l2_format*,struct mtk_video_fmt const*) ;

__attribute__((used)) static int vidioc_try_fmt_vid_out_mplane(struct file *file, void *priv,
      struct v4l2_format *f)
{
 const struct mtk_video_fmt *fmt;

 fmt = mtk_venc_find_format(f);
 if (!fmt) {
  f->fmt.pix.pixelformat = mtk_video_formats[OUT_FMT_IDX].fourcc;
  fmt = mtk_venc_find_format(f);
 }
 if (!f->fmt.pix_mp.colorspace) {
  f->fmt.pix_mp.colorspace = V4L2_COLORSPACE_REC709;
  f->fmt.pix_mp.ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
  f->fmt.pix_mp.quantization = V4L2_QUANTIZATION_DEFAULT;
  f->fmt.pix_mp.xfer_func = V4L2_XFER_FUNC_DEFAULT;
 }

 return vidioc_try_fmt(f, fmt);
}
