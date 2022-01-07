
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_buffer {TYPE_2__* vb2_queue; int index; } ;
struct mtk_vcodec_ctx {int id; } ;
struct mtk_q_data {scalar_t__* sizeimage; TYPE_1__* fmt; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_3__ {int num_planes; } ;


 int mtk_v4l2_debug (int,char*,int ,int ,int ) ;
 int mtk_v4l2_err (char*,int,scalar_t__,scalar_t__) ;
 struct mtk_q_data* mtk_vdec_get_q_data (struct mtk_vcodec_ctx*,int ) ;
 struct mtk_vcodec_ctx* vb2_get_drv_priv (TYPE_2__*) ;
 scalar_t__ vb2_plane_size (struct vb2_buffer*,int) ;

__attribute__((used)) static int vb2ops_vdec_buf_prepare(struct vb2_buffer *vb)
{
 struct mtk_vcodec_ctx *ctx = vb2_get_drv_priv(vb->vb2_queue);
 struct mtk_q_data *q_data;
 int i;

 mtk_v4l2_debug(3, "[%d] (%d) id=%d",
   ctx->id, vb->vb2_queue->type, vb->index);

 q_data = mtk_vdec_get_q_data(ctx, vb->vb2_queue->type);

 for (i = 0; i < q_data->fmt->num_planes; i++) {
  if (vb2_plane_size(vb, i) < q_data->sizeimage[i]) {
   mtk_v4l2_err("data will not fit into plane %d (%lu < %d)",
    i, vb2_plane_size(vb, i),
    q_data->sizeimage[i]);
  }
 }

 return 0;
}
