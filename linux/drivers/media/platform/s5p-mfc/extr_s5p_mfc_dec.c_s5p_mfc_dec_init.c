
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pixelformat; } ;
struct TYPE_4__ {TYPE_1__ pix_mp; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct s5p_mfc_ctx {void* dst_fmt; void* src_fmt; int dev; } ;


 scalar_t__ IS_MFCV6_PLUS (int ) ;
 scalar_t__ IS_MFCV8_PLUS (int ) ;
 int MFC_FMT_DEC ;
 int MFC_FMT_RAW ;
 int V4L2_PIX_FMT_H264 ;
 int V4L2_PIX_FMT_NV12M ;
 int V4L2_PIX_FMT_NV12MT ;
 int V4L2_PIX_FMT_NV12MT_16X16 ;
 void* find_format (struct v4l2_format*,int ) ;
 int mfc_debug (int,char*,void*,void*) ;

void s5p_mfc_dec_init(struct s5p_mfc_ctx *ctx)
{
 struct v4l2_format f;
 f.fmt.pix_mp.pixelformat = V4L2_PIX_FMT_H264;
 ctx->src_fmt = find_format(&f, MFC_FMT_DEC);
 if (IS_MFCV8_PLUS(ctx->dev))
  f.fmt.pix_mp.pixelformat = V4L2_PIX_FMT_NV12M;
 else if (IS_MFCV6_PLUS(ctx->dev))
  f.fmt.pix_mp.pixelformat = V4L2_PIX_FMT_NV12MT_16X16;
 else
  f.fmt.pix_mp.pixelformat = V4L2_PIX_FMT_NV12MT;
 ctx->dst_fmt = find_format(&f, MFC_FMT_RAW);
 mfc_debug(2, "Default src_fmt is %p, dest_fmt is %p\n",
   ctx->src_fmt, ctx->dst_fmt);
}
