
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {int type; } ;
struct mtk_jpeg_q_data {unsigned int* sizeimage; TYPE_1__* fmt; } ;
struct mtk_jpeg_dev {int v4l2_dev; } ;
struct mtk_jpeg_ctx {struct mtk_jpeg_dev* jpeg; } ;
struct device {int dummy; } ;
struct TYPE_2__ {unsigned int colplanes; } ;


 int EINVAL ;
 int debug ;
 struct mtk_jpeg_q_data* mtk_jpeg_get_q_data (struct mtk_jpeg_ctx*,int) ;
 int v4l2_dbg (int,int ,int *,char*,int,unsigned int) ;
 struct mtk_jpeg_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int mtk_jpeg_queue_setup(struct vb2_queue *q,
    unsigned int *num_buffers,
    unsigned int *num_planes,
    unsigned int sizes[],
    struct device *alloc_ctxs[])
{
 struct mtk_jpeg_ctx *ctx = vb2_get_drv_priv(q);
 struct mtk_jpeg_q_data *q_data = ((void*)0);
 struct mtk_jpeg_dev *jpeg = ctx->jpeg;
 int i;

 v4l2_dbg(1, debug, &jpeg->v4l2_dev, "(%d) buf_req count=%u\n",
   q->type, *num_buffers);

 q_data = mtk_jpeg_get_q_data(ctx, q->type);
 if (!q_data)
  return -EINVAL;

 *num_planes = q_data->fmt->colplanes;
 for (i = 0; i < q_data->fmt->colplanes; i++) {
  sizes[i] = q_data->sizeimage[i];
  v4l2_dbg(1, debug, &jpeg->v4l2_dev, "sizeimage[%d]=%u\n",
    i, sizes[i]);
 }

 return 0;
}
