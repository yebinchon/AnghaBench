
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hva_h264_ctx {scalar_t__ task; scalar_t__ rec_frame; scalar_t__ ref_frame; scalar_t__ seq_info; } ;
struct hva_ctx {scalar_t__ priv; } ;
struct device {int dummy; } ;


 struct device* ctx_to_dev (struct hva_ctx*) ;
 int devm_kfree (struct device*,struct hva_h264_ctx*) ;
 int hva_mem_free (struct hva_ctx*,scalar_t__) ;

__attribute__((used)) static int hva_h264_close(struct hva_ctx *pctx)
{
 struct hva_h264_ctx *ctx = (struct hva_h264_ctx *)pctx->priv;
 struct device *dev = ctx_to_dev(pctx);

 if (ctx->seq_info)
  hva_mem_free(pctx, ctx->seq_info);

 if (ctx->ref_frame)
  hva_mem_free(pctx, ctx->ref_frame);

 if (ctx->rec_frame)
  hva_mem_free(pctx, ctx->rec_frame);

 if (ctx->task)
  hva_mem_free(pctx, ctx->task);

 devm_kfree(dev, ctx);

 return 0;
}
