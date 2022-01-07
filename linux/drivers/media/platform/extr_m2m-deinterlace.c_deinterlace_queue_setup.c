
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {int type; } ;
struct device {int dummy; } ;
struct deinterlace_q_data {int width; int height; TYPE_1__* fmt; } ;
struct deinterlace_ctx {int dev; } ;
struct TYPE_2__ {int fourcc; } ;




 int dprintk (int ,char*,unsigned int,unsigned int) ;
 struct deinterlace_q_data* get_q_data (int ) ;
 struct deinterlace_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int deinterlace_queue_setup(struct vb2_queue *vq,
    unsigned int *nbuffers, unsigned int *nplanes,
    unsigned int sizes[], struct device *alloc_devs[])
{
 struct deinterlace_ctx *ctx = vb2_get_drv_priv(vq);
 struct deinterlace_q_data *q_data;
 unsigned int size, count = *nbuffers;

 q_data = get_q_data(vq->type);

 switch (q_data->fmt->fourcc) {
 case 129:
  size = q_data->width * q_data->height * 3 / 2;
  break;
 case 128:
 default:
  size = q_data->width * q_data->height * 2;
 }

 *nplanes = 1;
 *nbuffers = count;
 sizes[0] = size;

 dprintk(ctx->dev, "get %d buffer(s) of size %d each.\n", count, size);

 return 0;
}
