
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vicodec_q_data {unsigned int sizeimage; unsigned int vb2_sizeimage; } ;
struct vicodec_ctx {int dummy; } ;
struct vb2_queue {int type; } ;
struct device {int dummy; } ;


 int EINVAL ;
 struct vicodec_q_data* get_q_data (struct vicodec_ctx*,int ) ;
 struct vicodec_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int vicodec_queue_setup(struct vb2_queue *vq, unsigned int *nbuffers,
          unsigned int *nplanes, unsigned int sizes[],
          struct device *alloc_devs[])
{
 struct vicodec_ctx *ctx = vb2_get_drv_priv(vq);
 struct vicodec_q_data *q_data = get_q_data(ctx, vq->type);
 unsigned int size = q_data->sizeimage;

 if (*nplanes)
  return sizes[0] < size ? -EINVAL : 0;

 *nplanes = 1;
 sizes[0] = size;
 q_data->vb2_sizeimage = size;
 return 0;
}
