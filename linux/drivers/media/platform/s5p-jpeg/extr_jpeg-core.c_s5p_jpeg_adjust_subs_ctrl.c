
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* fmt; } ;
struct s5p_jpeg_ctx {TYPE_4__ out_q; TYPE_2__* jpeg; } ;
struct TYPE_7__ {int subsampling; int fourcc; } ;
struct TYPE_6__ {TYPE_1__* variant; } ;
struct TYPE_5__ {int version; } ;


 int EINVAL ;




 int V4L2_JPEG_CHROMA_SUBSAMPLING_GRAY ;
 int V4L2_PIX_FMT_GREY ;
 int V4L2_PIX_FMT_RGB32 ;

__attribute__((used)) static int s5p_jpeg_adjust_subs_ctrl(struct s5p_jpeg_ctx *ctx, int *ctrl_val)
{
 switch (ctx->jpeg->variant->version) {
 case 128:
  return 0;
 case 131:
 case 129:




  if (ctx->out_q.fmt->fourcc == V4L2_PIX_FMT_RGB32)
   *ctrl_val = 0;
  break;
 case 130:





  if (ctx->out_q.fmt->fourcc != V4L2_PIX_FMT_GREY &&
      *ctrl_val == V4L2_JPEG_CHROMA_SUBSAMPLING_GRAY)
   return -EINVAL;
  break;
 }






 if (ctx->out_q.fmt->subsampling > *ctrl_val)
  *ctrl_val = ctx->out_q.fmt->subsampling;

 return 0;
}
