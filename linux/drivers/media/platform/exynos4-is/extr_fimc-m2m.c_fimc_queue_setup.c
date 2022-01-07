
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {int type; } ;
struct fimc_frame {unsigned int* payload; TYPE_1__* fmt; } ;
struct fimc_ctx {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {unsigned int memplanes; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct fimc_frame*) ;
 int PTR_ERR (struct fimc_frame*) ;
 struct fimc_frame* ctx_get_frame (struct fimc_ctx*,int ) ;
 struct fimc_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int fimc_queue_setup(struct vb2_queue *vq,
       unsigned int *num_buffers, unsigned int *num_planes,
       unsigned int sizes[], struct device *alloc_devs[])
{
 struct fimc_ctx *ctx = vb2_get_drv_priv(vq);
 struct fimc_frame *f;
 int i;

 f = ctx_get_frame(ctx, vq->type);
 if (IS_ERR(f))
  return PTR_ERR(f);




 if (!f->fmt)
  return -EINVAL;

 *num_planes = f->fmt->memplanes;
 for (i = 0; i < f->fmt->memplanes; i++)
  sizes[i] = f->payload[i];
 return 0;
}
