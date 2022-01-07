
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {int type; } ;
struct mtk_mdp_frame {unsigned int* payload; TYPE_1__* fmt; } ;
struct mtk_mdp_ctx {int id; } ;
struct device {int dummy; } ;
struct TYPE_2__ {unsigned int num_planes; } ;


 struct mtk_mdp_frame* mtk_mdp_ctx_get_frame (struct mtk_mdp_ctx*,int ) ;
 int mtk_mdp_dbg (int,char*,int ,int ,unsigned int,unsigned int,unsigned int,unsigned int) ;
 struct mtk_mdp_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int mtk_mdp_m2m_queue_setup(struct vb2_queue *vq,
   unsigned int *num_buffers, unsigned int *num_planes,
   unsigned int sizes[], struct device *alloc_devs[])
{
 struct mtk_mdp_ctx *ctx = vb2_get_drv_priv(vq);
 struct mtk_mdp_frame *frame;
 int i;

 frame = mtk_mdp_ctx_get_frame(ctx, vq->type);
 *num_planes = frame->fmt->num_planes;
 for (i = 0; i < frame->fmt->num_planes; i++)
  sizes[i] = frame->payload[i];
 mtk_mdp_dbg(2, "[%d] type:%d, planes:%d, buffers:%d, size:%u,%u",
      ctx->id, vq->type, *num_planes, *num_buffers,
      sizes[0], sizes[1]);
 return 0;
}
