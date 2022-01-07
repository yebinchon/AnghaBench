
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* m2m_ctx; } ;
struct vicodec_ctx {scalar_t__ is_stateless; scalar_t__ is_enc; TYPE_3__ fh; } ;
struct v4l2_fwht_pixfmt_info {int id; int pixenc; int components_num; int height_div; int width_div; } ;
struct v4l2_fmtdesc {int flags; int pixelformat; scalar_t__ index; int type; } ;
struct TYPE_8__ {struct v4l2_fwht_pixfmt_info* info; } ;
struct TYPE_5__ {int q; } ;
struct TYPE_6__ {TYPE_1__ cap_q_ctx; } ;


 int EINVAL ;
 int V4L2_FMT_FLAG_CONTINUOUS_BYTESTREAM ;
 int V4L2_FMT_FLAG_DYN_RESOLUTION ;
 int V4L2_PIX_FMT_FWHT ;
 int V4L2_PIX_FMT_FWHT_STATELESS ;
 scalar_t__ V4L2_TYPE_IS_MULTIPLANAR (int ) ;
 TYPE_4__* get_q_data (struct vicodec_ctx*,int ) ;
 scalar_t__ multiplanar ;
 struct v4l2_fwht_pixfmt_info* v4l2_fwht_find_nth_fmt (int ,int ,int ,int ,scalar_t__) ;
 struct v4l2_fwht_pixfmt_info* v4l2_fwht_get_pixfmt (scalar_t__) ;
 int vb2_is_streaming (int *) ;

__attribute__((used)) static int enum_fmt(struct v4l2_fmtdesc *f, struct vicodec_ctx *ctx,
      bool is_out)
{
 bool is_uncomp = (ctx->is_enc && is_out) || (!ctx->is_enc && !is_out);

 if (V4L2_TYPE_IS_MULTIPLANAR(f->type) && !multiplanar)
  return -EINVAL;
 if (!V4L2_TYPE_IS_MULTIPLANAR(f->type) && multiplanar)
  return -EINVAL;

 if (is_uncomp) {
  const struct v4l2_fwht_pixfmt_info *info =
     get_q_data(ctx, f->type)->info;

  if (ctx->is_enc ||
      !vb2_is_streaming(&ctx->fh.m2m_ctx->cap_q_ctx.q))
   info = v4l2_fwht_get_pixfmt(f->index);
  else
   info = v4l2_fwht_find_nth_fmt(info->width_div,
           info->height_div,
           info->components_num,
           info->pixenc,
           f->index);
  if (!info)
   return -EINVAL;
  f->pixelformat = info->id;
 } else {
  if (f->index)
   return -EINVAL;
  f->pixelformat = ctx->is_stateless ?
   V4L2_PIX_FMT_FWHT_STATELESS : V4L2_PIX_FMT_FWHT;
  if (!ctx->is_enc && !ctx->is_stateless)
   f->flags = V4L2_FMT_FLAG_DYN_RESOLUTION |
       V4L2_FMT_FLAG_CONTINUOUS_BYTESTREAM;
 }
 return 0;
}
