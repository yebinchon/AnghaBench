
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vicodec_ctx {int is_stateless; int is_enc; } ;
struct v4l2_pix_format_mplane {void* colorspace; void* pixelformat; } ;
struct v4l2_pix_format {void* colorspace; void* pixelformat; } ;
struct TYPE_3__ {struct v4l2_pix_format_mplane pix_mp; struct v4l2_pix_format pix; } ;
struct v4l2_format {int type; TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct TYPE_4__ {void* id; } ;


 int EINVAL ;


 void* V4L2_COLORSPACE_REC709 ;
 void* V4L2_PIX_FMT_FWHT ;
 void* V4L2_PIX_FMT_FWHT_STATELESS ;
 struct vicodec_ctx* file2ctx (struct file*) ;
 TYPE_2__* find_fmt (void*) ;
 int multiplanar ;
 int vidioc_try_fmt (struct vicodec_ctx*,struct v4l2_format*) ;

__attribute__((used)) static int vidioc_try_fmt_vid_out(struct file *file, void *priv,
      struct v4l2_format *f)
{
 struct vicodec_ctx *ctx = file2ctx(file);
 struct v4l2_pix_format_mplane *pix_mp;
 struct v4l2_pix_format *pix;

 switch (f->type) {
 case 129:
  if (multiplanar)
   return -EINVAL;
  pix = &f->fmt.pix;
  if (ctx->is_enc)
   pix->pixelformat = find_fmt(pix->pixelformat)->id;
  else if (ctx->is_stateless)
   pix->pixelformat = V4L2_PIX_FMT_FWHT_STATELESS;
  else
   pix->pixelformat = V4L2_PIX_FMT_FWHT;
  if (!pix->colorspace)
   pix->colorspace = V4L2_COLORSPACE_REC709;
  break;
 case 128:
  if (!multiplanar)
   return -EINVAL;
  pix_mp = &f->fmt.pix_mp;
  if (ctx->is_enc)
   pix_mp->pixelformat = find_fmt(pix_mp->pixelformat)->id;
  else if (ctx->is_stateless)
   pix_mp->pixelformat = V4L2_PIX_FMT_FWHT_STATELESS;
  else
   pix_mp->pixelformat = V4L2_PIX_FMT_FWHT;
  if (!pix_mp->colorspace)
   pix_mp->colorspace = V4L2_COLORSPACE_REC709;
  break;
 default:
  return -EINVAL;
 }

 return vidioc_try_fmt(ctx, f);
}
