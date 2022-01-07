
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_jpeg_q_data {scalar_t__ w; scalar_t__ h; scalar_t__ fmt; } ;
struct mtk_jpeg_dev {int v4l2_dev; } ;
struct mtk_jpeg_dec_param {scalar_t__ pic_w; scalar_t__ pic_h; int dst_fourcc; } ;
struct mtk_jpeg_ctx {struct mtk_jpeg_q_data cap_q; struct mtk_jpeg_q_data out_q; struct mtk_jpeg_dev* jpeg; } ;


 int MTK_JPEG_FMT_TYPE_CAPTURE ;
 int debug ;
 scalar_t__ mtk_jpeg_find_format (struct mtk_jpeg_ctx*,int ,int ) ;
 int v4l2_dbg (int,int ,int *,char*) ;

__attribute__((used)) static bool mtk_jpeg_check_resolution_change(struct mtk_jpeg_ctx *ctx,
          struct mtk_jpeg_dec_param *param)
{
 struct mtk_jpeg_dev *jpeg = ctx->jpeg;
 struct mtk_jpeg_q_data *q_data;

 q_data = &ctx->out_q;
 if (q_data->w != param->pic_w || q_data->h != param->pic_h) {
  v4l2_dbg(1, debug, &jpeg->v4l2_dev, "Picture size change\n");
  return 1;
 }

 q_data = &ctx->cap_q;
 if (q_data->fmt != mtk_jpeg_find_format(ctx, param->dst_fourcc,
      MTK_JPEG_FMT_TYPE_CAPTURE)) {
  v4l2_dbg(1, debug, &jpeg->v4l2_dev, "format change\n");
  return 1;
 }
 return 0;
}
