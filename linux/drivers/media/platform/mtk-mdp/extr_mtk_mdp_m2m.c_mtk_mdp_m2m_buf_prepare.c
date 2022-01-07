
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_buffer {TYPE_2__* vb2_queue; } ;
struct mtk_mdp_frame {int * payload; TYPE_1__* fmt; } ;
struct mtk_mdp_ctx {int dummy; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_3__ {int num_planes; } ;


 int V4L2_TYPE_IS_OUTPUT (int ) ;
 struct mtk_mdp_frame* mtk_mdp_ctx_get_frame (struct mtk_mdp_ctx*,int ) ;
 struct mtk_mdp_ctx* vb2_get_drv_priv (TYPE_2__*) ;
 int vb2_set_plane_payload (struct vb2_buffer*,int,int ) ;

__attribute__((used)) static int mtk_mdp_m2m_buf_prepare(struct vb2_buffer *vb)
{
 struct mtk_mdp_ctx *ctx = vb2_get_drv_priv(vb->vb2_queue);
 struct mtk_mdp_frame *frame;
 int i;

 frame = mtk_mdp_ctx_get_frame(ctx, vb->vb2_queue->type);

 if (!V4L2_TYPE_IS_OUTPUT(vb->vb2_queue->type)) {
  for (i = 0; i < frame->fmt->num_planes; i++)
   vb2_set_plane_payload(vb, i, frame->payload[i]);
 }

 return 0;
}
