
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {struct fimc_lite* drv_priv; } ;
struct flite_frame {unsigned long f_width; unsigned long f_height; struct fimc_fmt* fmt; } ;
struct fimc_lite {struct flite_frame out_frame; } ;
struct fimc_fmt {unsigned int memplanes; unsigned long* depth; } ;
struct device {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int queue_setup(struct vb2_queue *vq,
         unsigned int *num_buffers, unsigned int *num_planes,
         unsigned int sizes[], struct device *alloc_devs[])
{
 struct fimc_lite *fimc = vq->drv_priv;
 struct flite_frame *frame = &fimc->out_frame;
 const struct fimc_fmt *fmt = frame->fmt;
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

 for (i = 0; i < fmt->memplanes; i++)
  sizes[i] = (wh * fmt->depth[i]) / 8;

 return 0;
}
