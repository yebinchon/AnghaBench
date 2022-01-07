
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pixelformat; int height; int width; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {scalar_t__ type; TYPE_2__ fmt; } ;
struct coda_ctx {int vdoa; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int round_up (int ,int) ;
 int vdoa_context_configure (int *,int ,int ,int ) ;

__attribute__((used)) static int coda_try_fmt_vdoa(struct coda_ctx *ctx, struct v4l2_format *f,
        bool *use_vdoa)
{
 int err;

 if (f->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 if (!use_vdoa)
  return -EINVAL;

 if (!ctx->vdoa) {
  *use_vdoa = 0;
  return 0;
 }

 err = vdoa_context_configure(((void*)0), round_up(f->fmt.pix.width, 16),
         f->fmt.pix.height, f->fmt.pix.pixelformat);
 if (err) {
  *use_vdoa = 0;
  return 0;
 }

 *use_vdoa = 1;
 return 0;
}
