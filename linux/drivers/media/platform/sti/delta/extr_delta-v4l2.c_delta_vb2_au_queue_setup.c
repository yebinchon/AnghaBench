
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct device {int dummy; } ;
struct delta_ctx {unsigned int max_au_size; } ;


 unsigned int DELTA_MAX_AUS ;
 int EINVAL ;
 struct delta_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int delta_vb2_au_queue_setup(struct vb2_queue *vq,
        unsigned int *num_buffers,
        unsigned int *num_planes,
        unsigned int sizes[],
        struct device *alloc_devs[])
{
 struct delta_ctx *ctx = vb2_get_drv_priv(vq);
 unsigned int size = ctx->max_au_size;

 if (*num_planes)
  return sizes[0] < size ? -EINVAL : 0;

 *num_planes = 1;
 if (*num_buffers < 1)
  *num_buffers = 1;
 if (*num_buffers > DELTA_MAX_AUS)
  *num_buffers = DELTA_MAX_AUS;

 sizes[0] = size;

 return 0;
}
