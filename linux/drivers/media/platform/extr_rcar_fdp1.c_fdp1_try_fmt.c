
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int field; int height; int width; int pixelformat; } ;
struct TYPE_4__ {TYPE_2__ pix_mp; } ;
struct v4l2_format {scalar_t__ type; TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct fdp1_ctx {int fdp1; } ;


 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 scalar_t__ V4L2_TYPE_IS_OUTPUT (scalar_t__) ;
 int dprintk (int ,char*,char*,char*,int ,int ,int ,int ) ;
 int fdp1_try_fmt_capture (struct fdp1_ctx*,int *,TYPE_2__*) ;
 int fdp1_try_fmt_output (struct fdp1_ctx*,int *,TYPE_2__*) ;
 struct fdp1_ctx* fh_to_ctx (void*) ;

__attribute__((used)) static int fdp1_try_fmt(struct file *file, void *priv, struct v4l2_format *f)
{
 struct fdp1_ctx *ctx = fh_to_ctx(priv);

 if (f->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
  fdp1_try_fmt_output(ctx, ((void*)0), &f->fmt.pix_mp);
 else
  fdp1_try_fmt_capture(ctx, ((void*)0), &f->fmt.pix_mp);

 dprintk(ctx->fdp1, "Try %s format: %4.4s (0x%08x) %ux%u field %u\n",
  V4L2_TYPE_IS_OUTPUT(f->type) ? "output" : "capture",
  (char *)&f->fmt.pix_mp.pixelformat, f->fmt.pix_mp.pixelformat,
  f->fmt.pix_mp.width, f->fmt.pix_mp.height, f->fmt.pix_mp.field);

 return 0;
}
