
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vim2m_q_data {int width; int height; TYPE_1__* fmt; } ;
struct vim2m_ctx {int dev; } ;
struct vb2_queue {int type; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int depth; } ;


 int EINVAL ;
 unsigned int MEM2MEM_VID_MEM_LIMIT ;
 int dprintk (int ,int,char*,int ,unsigned int,unsigned int) ;
 struct vim2m_q_data* get_q_data (struct vim2m_ctx*,int ) ;
 int type_name (int ) ;
 struct vim2m_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int vim2m_queue_setup(struct vb2_queue *vq,
        unsigned int *nbuffers,
        unsigned int *nplanes,
        unsigned int sizes[],
        struct device *alloc_devs[])
{
 struct vim2m_ctx *ctx = vb2_get_drv_priv(vq);
 struct vim2m_q_data *q_data;
 unsigned int size, count = *nbuffers;

 q_data = get_q_data(ctx, vq->type);
 if (!q_data)
  return -EINVAL;

 size = q_data->width * q_data->height * q_data->fmt->depth >> 3;

 while (size * count > MEM2MEM_VID_MEM_LIMIT)
  (count)--;
 *nbuffers = count;

 if (*nplanes)
  return sizes[0] < size ? -EINVAL : 0;

 *nplanes = 1;
 sizes[0] = size;

 dprintk(ctx->dev, 1, "%s: get %d buffer(s) of size %d each.\n",
  type_name(vq->type), count, size);

 return 0;
}
