
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int type; } ;
struct s5p_jpeg_q_data {unsigned int size; } ;
struct s5p_jpeg_ctx {scalar_t__ mode; } ;
struct device {int dummy; } ;


 int BUG_ON (int ) ;
 scalar_t__ S5P_JPEG_DECODE ;
 struct s5p_jpeg_q_data* get_q_data (struct s5p_jpeg_ctx*,int ) ;
 struct s5p_jpeg_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int s5p_jpeg_queue_setup(struct vb2_queue *vq,
      unsigned int *nbuffers, unsigned int *nplanes,
      unsigned int sizes[], struct device *alloc_devs[])
{
 struct s5p_jpeg_ctx *ctx = vb2_get_drv_priv(vq);
 struct s5p_jpeg_q_data *q_data = ((void*)0);
 unsigned int size, count = *nbuffers;

 q_data = get_q_data(ctx, vq->type);
 BUG_ON(q_data == ((void*)0));

 size = q_data->size;





 if (ctx->mode == S5P_JPEG_DECODE)
  count = 1;

 *nbuffers = count;
 *nplanes = 1;
 sizes[0] = size;

 return 0;
}
