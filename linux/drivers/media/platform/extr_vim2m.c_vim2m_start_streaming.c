
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vim2m_q_data {scalar_t__ sequence; } ;
struct vim2m_ctx {int dummy; } ;
struct vb2_queue {int type; } ;


 int EINVAL ;
 struct vim2m_q_data* get_q_data (struct vim2m_ctx*,int ) ;
 struct vim2m_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int vim2m_start_streaming(struct vb2_queue *q, unsigned int count)
{
 struct vim2m_ctx *ctx = vb2_get_drv_priv(q);
 struct vim2m_q_data *q_data = get_q_data(ctx, q->type);

 if (!q_data)
  return -EINVAL;

 q_data->sequence = 0;
 return 0;
}
