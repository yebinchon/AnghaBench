
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {struct fimc_ctx* drv_priv; } ;
struct fimc_frame {unsigned long f_width; unsigned long f_height; unsigned int* payload; struct fimc_fmt* fmt; } ;
struct fimc_fmt {unsigned int memplanes; unsigned long* depth; int color; } ;
struct fimc_ctx {struct fimc_frame d_frame; } ;
struct device {int dummy; } ;


 int EINVAL ;
 scalar_t__ fimc_fmt_is_user_defined (int ) ;
 unsigned int max_t (int ,unsigned int,unsigned int) ;
 int u32 ;

__attribute__((used)) static int queue_setup(struct vb2_queue *vq,
         unsigned int *num_buffers, unsigned int *num_planes,
         unsigned int sizes[], struct device *alloc_devs[])
{
 struct fimc_ctx *ctx = vq->drv_priv;
 struct fimc_frame *frame = &ctx->d_frame;
 struct fimc_fmt *fmt = frame->fmt;
 unsigned long wh = frame->f_width * frame->f_height;
 int i;

 if (fmt == ((void*)0))
  return -EINVAL;

 if (*num_planes) {
  if (*num_planes != fmt->memplanes)
   return -EINVAL;
  for (i = 0; i < *num_planes; i++)
   if (sizes[i] < (wh * fmt->depth[i]) / 8)
    return -EINVAL;
  return 0;
 }

 *num_planes = fmt->memplanes;

 for (i = 0; i < fmt->memplanes; i++) {
  unsigned int size = (wh * fmt->depth[i]) / 8;

  if (fimc_fmt_is_user_defined(fmt->color))
   sizes[i] = frame->payload[i];
  else
   sizes[i] = max_t(u32, size, frame->payload[i]);
 }

 return 0;
}
