
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int type; } ;
struct rga_frame {unsigned int size; } ;
struct rga_ctx {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct rga_frame*) ;
 int PTR_ERR (struct rga_frame*) ;
 struct rga_frame* rga_get_frame (struct rga_ctx*,int ) ;
 struct rga_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int
rga_queue_setup(struct vb2_queue *vq,
  unsigned int *nbuffers, unsigned int *nplanes,
  unsigned int sizes[], struct device *alloc_devs[])
{
 struct rga_ctx *ctx = vb2_get_drv_priv(vq);
 struct rga_frame *f = rga_get_frame(ctx, vq->type);

 if (IS_ERR(f))
  return PTR_ERR(f);

 if (*nplanes)
  return sizes[0] < f->size ? -EINVAL : 0;

 sizes[0] = f->size;
 *nplanes = 1;

 return 0;
}
