
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int type; } ;
struct mtk_vcodec_ctx {int id; } ;
struct mtk_q_data {unsigned int* sizeimage; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 int mtk_v4l2_debug (int,char*,int ,int ,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int mtk_v4l2_err (char*,int ) ;
 struct mtk_q_data* mtk_vdec_get_q_data (struct mtk_vcodec_ctx*,int ) ;
 struct mtk_vcodec_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int vb2ops_vdec_queue_setup(struct vb2_queue *vq,
    unsigned int *nbuffers,
    unsigned int *nplanes,
    unsigned int sizes[],
    struct device *alloc_devs[])
{
 struct mtk_vcodec_ctx *ctx = vb2_get_drv_priv(vq);
 struct mtk_q_data *q_data;
 unsigned int i;

 q_data = mtk_vdec_get_q_data(ctx, vq->type);

 if (q_data == ((void*)0)) {
  mtk_v4l2_err("vq->type=%d err\n", vq->type);
  return -EINVAL;
 }

 if (*nplanes) {
  for (i = 0; i < *nplanes; i++) {
   if (sizes[i] < q_data->sizeimage[i])
    return -EINVAL;
  }
 } else {
  if (vq->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE)
   *nplanes = 2;
  else
   *nplanes = 1;

  for (i = 0; i < *nplanes; i++)
   sizes[i] = q_data->sizeimage[i];
 }

 mtk_v4l2_debug(1,
   "[%d]\t type = %d, get %d plane(s), %d buffer(s) of size 0x%x 0x%x ",
   ctx->id, vq->type, *nplanes, *nbuffers,
   sizes[0], sizes[1]);

 return 0;
}
