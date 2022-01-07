
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int type; } ;
struct jpu_q_data {scalar_t__ sequence; } ;
struct jpu_ctx {int dummy; } ;


 struct jpu_q_data* jpu_get_q_data (struct jpu_ctx*,int ) ;
 struct jpu_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int jpu_start_streaming(struct vb2_queue *vq, unsigned count)
{
 struct jpu_ctx *ctx = vb2_get_drv_priv(vq);
 struct jpu_q_data *q_data = jpu_get_q_data(ctx, vq->type);

 q_data->sequence = 0;
 return 0;
}
