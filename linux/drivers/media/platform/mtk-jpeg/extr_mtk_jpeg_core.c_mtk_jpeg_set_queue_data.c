
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_jpeg_q_data {int * sizeimage; int * bytesperline; TYPE_1__* fmt; int h; int w; } ;
struct mtk_jpeg_dev {int v4l2_dev; } ;
struct mtk_jpeg_dec_param {int dst_fourcc; int dec_h; int dec_w; int pic_h; int pic_w; int * comp_size; int * mem_stride; } ;
struct mtk_jpeg_ctx {struct mtk_jpeg_q_data cap_q; struct mtk_jpeg_q_data out_q; struct mtk_jpeg_dev* jpeg; } ;
struct TYPE_2__ {int colplanes; } ;


 int MTK_JPEG_FMT_TYPE_CAPTURE ;
 int debug ;
 TYPE_1__* mtk_jpeg_find_format (struct mtk_jpeg_ctx*,int,int ) ;
 int v4l2_dbg (int,int ,int *,char*,int,int,int,int,int ,int ,int ,int ) ;

__attribute__((used)) static void mtk_jpeg_set_queue_data(struct mtk_jpeg_ctx *ctx,
        struct mtk_jpeg_dec_param *param)
{
 struct mtk_jpeg_dev *jpeg = ctx->jpeg;
 struct mtk_jpeg_q_data *q_data;
 int i;

 q_data = &ctx->out_q;
 q_data->w = param->pic_w;
 q_data->h = param->pic_h;

 q_data = &ctx->cap_q;
 q_data->w = param->dec_w;
 q_data->h = param->dec_h;
 q_data->fmt = mtk_jpeg_find_format(ctx,
        param->dst_fourcc,
        MTK_JPEG_FMT_TYPE_CAPTURE);

 for (i = 0; i < q_data->fmt->colplanes; i++) {
  q_data->bytesperline[i] = param->mem_stride[i];
  q_data->sizeimage[i] = param->comp_size[i];
 }

 v4l2_dbg(1, debug, &jpeg->v4l2_dev,
   "set_parse cap:%c%c%c%c pic(%u, %u), buf(%u, %u)\n",
   (param->dst_fourcc & 0xff),
   (param->dst_fourcc >> 8 & 0xff),
   (param->dst_fourcc >> 16 & 0xff),
   (param->dst_fourcc >> 24 & 0xff),
   param->pic_w, param->pic_h,
   param->dec_w, param->dec_h);
}
