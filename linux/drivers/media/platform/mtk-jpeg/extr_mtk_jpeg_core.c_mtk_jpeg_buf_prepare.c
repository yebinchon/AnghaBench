
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_buffer {TYPE_2__* vb2_queue; } ;
struct mtk_jpeg_q_data {int * sizeimage; TYPE_1__* fmt; } ;
struct mtk_jpeg_ctx {int dummy; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_3__ {int colplanes; } ;


 int EINVAL ;
 struct mtk_jpeg_q_data* mtk_jpeg_get_q_data (struct mtk_jpeg_ctx*,int ) ;
 struct mtk_jpeg_ctx* vb2_get_drv_priv (TYPE_2__*) ;
 int vb2_set_plane_payload (struct vb2_buffer*,int,int ) ;

__attribute__((used)) static int mtk_jpeg_buf_prepare(struct vb2_buffer *vb)
{
 struct mtk_jpeg_ctx *ctx = vb2_get_drv_priv(vb->vb2_queue);
 struct mtk_jpeg_q_data *q_data = ((void*)0);
 int i;

 q_data = mtk_jpeg_get_q_data(ctx, vb->vb2_queue->type);
 if (!q_data)
  return -EINVAL;

 for (i = 0; i < q_data->fmt->colplanes; i++)
  vb2_set_plane_payload(vb, i, q_data->sizeimage[i]);

 return 0;
}
