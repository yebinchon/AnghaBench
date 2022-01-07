
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int height; int width; } ;
struct coda_q_data {scalar_t__ fourcc; TYPE_1__ rect; } ;
struct coda_dev {TYPE_2__* devtype; } ;
struct TYPE_6__ {int vaddr; } ;
struct coda_ctx {TYPE_3__ workbuf; TYPE_3__ psbuf; TYPE_3__ slicebuf; TYPE_3__ parabuf; struct coda_dev* dev; } ;
struct TYPE_5__ {scalar_t__ product; size_t workbuf_size; } ;


 size_t CODA7_PS_BUF_SIZE ;
 scalar_t__ CODA9_PS_SAVE_SIZE ;
 scalar_t__ CODA_7541 ;
 scalar_t__ CODA_960 ;
 scalar_t__ CODA_DX6 ;
 scalar_t__ CODA_HX4 ;
 size_t CODA_PARA_BUF_SIZE ;
 int DIV_ROUND_UP (int ,int) ;
 scalar_t__ V4L2_PIX_FMT_H264 ;
 int coda_alloc_context_buf (struct coda_ctx*,TYPE_3__*,size_t,char*) ;
 int coda_free_context_buffers (struct coda_ctx*) ;

__attribute__((used)) static int coda_alloc_context_buffers(struct coda_ctx *ctx,
          struct coda_q_data *q_data)
{
 struct coda_dev *dev = ctx->dev;
 size_t size;
 int ret;

 if (!ctx->parabuf.vaddr) {
  ret = coda_alloc_context_buf(ctx, &ctx->parabuf,
          CODA_PARA_BUF_SIZE, "parabuf");
  if (ret < 0)
   return ret;
 }

 if (dev->devtype->product == CODA_DX6)
  return 0;

 if (!ctx->slicebuf.vaddr && q_data->fourcc == V4L2_PIX_FMT_H264) {

  size = (DIV_ROUND_UP(q_data->rect.width, 16) *
   DIV_ROUND_UP(q_data->rect.height, 16)) * 3200 / 8 + 512;
  ret = coda_alloc_context_buf(ctx, &ctx->slicebuf, size,
          "slicebuf");
  if (ret < 0)
   goto err;
 }

 if (!ctx->psbuf.vaddr && (dev->devtype->product == CODA_HX4 ||
      dev->devtype->product == CODA_7541)) {
  ret = coda_alloc_context_buf(ctx, &ctx->psbuf,
          CODA7_PS_BUF_SIZE, "psbuf");
  if (ret < 0)
   goto err;
 }

 if (!ctx->workbuf.vaddr) {
  size = dev->devtype->workbuf_size;
  if (dev->devtype->product == CODA_960 &&
      q_data->fourcc == V4L2_PIX_FMT_H264)
   size += CODA9_PS_SAVE_SIZE;
  ret = coda_alloc_context_buf(ctx, &ctx->workbuf, size,
          "workbuf");
  if (ret < 0)
   goto err;
 }

 return 0;

err:
 coda_free_context_buffers(ctx);
 return ret;
}
