
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {int type; } ;
struct mtk_vcodec_ctx {int dummy; } ;
struct mtk_q_data {unsigned int* sizeimage; TYPE_1__* fmt; } ;
struct device {int dummy; } ;
struct TYPE_2__ {unsigned int num_planes; } ;


 int EINVAL ;
 struct mtk_q_data* mtk_venc_get_q_data (struct mtk_vcodec_ctx*,int ) ;
 struct mtk_vcodec_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int vb2ops_venc_queue_setup(struct vb2_queue *vq,
       unsigned int *nbuffers,
       unsigned int *nplanes,
       unsigned int sizes[],
       struct device *alloc_devs[])
{
 struct mtk_vcodec_ctx *ctx = vb2_get_drv_priv(vq);
 struct mtk_q_data *q_data;
 unsigned int i;

 q_data = mtk_venc_get_q_data(ctx, vq->type);

 if (q_data == ((void*)0))
  return -EINVAL;

 if (*nplanes) {
  for (i = 0; i < *nplanes; i++)
   if (sizes[i] < q_data->sizeimage[i])
    return -EINVAL;
 } else {
  *nplanes = q_data->fmt->num_planes;
  for (i = 0; i < *nplanes; i++)
   sizes[i] = q_data->sizeimage[i];
 }

 return 0;
}
