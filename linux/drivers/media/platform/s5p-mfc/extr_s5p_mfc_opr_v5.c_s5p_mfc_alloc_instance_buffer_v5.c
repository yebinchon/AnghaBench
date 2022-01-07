
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct s5p_mfc_dev {int* dma_base; TYPE_2__* variant; } ;
struct TYPE_7__ {int ofs; int dma; int virt; int size; } ;
struct s5p_mfc_ctx {scalar_t__ codec_mode; TYPE_3__ shm; TYPE_3__ ctx; struct s5p_mfc_dev* dev; } ;
struct s5p_mfc_buf_size_v5 {int shm; int non_h264_ctx; int h264_ctx; } ;
struct TYPE_6__ {TYPE_1__* buf_size; } ;
struct TYPE_5__ {struct s5p_mfc_buf_size_v5* priv; } ;


 size_t BANK_L_CTX ;
 int BUG_ON (int) ;
 int MFC_BANK1_ALIGN_ORDER ;
 int OFFSETA (int) ;
 scalar_t__ S5P_MFC_CODEC_H264_DEC ;
 scalar_t__ S5P_MFC_CODEC_H264_ENC ;
 int memset (int ,int ,int ) ;
 int mfc_err (char*) ;
 int s5p_mfc_alloc_priv_buf (struct s5p_mfc_dev*,size_t,TYPE_3__*) ;
 int s5p_mfc_release_priv_buf (struct s5p_mfc_dev*,TYPE_3__*) ;
 int wmb () ;

__attribute__((used)) static int s5p_mfc_alloc_instance_buffer_v5(struct s5p_mfc_ctx *ctx)
{
 struct s5p_mfc_dev *dev = ctx->dev;
 struct s5p_mfc_buf_size_v5 *buf_size = dev->variant->buf_size->priv;
 int ret;

 if (ctx->codec_mode == S5P_MFC_CODEC_H264_DEC ||
  ctx->codec_mode == S5P_MFC_CODEC_H264_ENC)
  ctx->ctx.size = buf_size->h264_ctx;
 else
  ctx->ctx.size = buf_size->non_h264_ctx;

 ret = s5p_mfc_alloc_priv_buf(dev, BANK_L_CTX, &ctx->ctx);
 if (ret) {
  mfc_err("Failed to allocate instance buffer\n");
  return ret;
 }
 ctx->ctx.ofs = OFFSETA(ctx->ctx.dma);


 memset(ctx->ctx.virt, 0, ctx->ctx.size);
 wmb();


 ctx->shm.size = buf_size->shm;
 ret = s5p_mfc_alloc_priv_buf(dev, BANK_L_CTX, &ctx->shm);
 if (ret) {
  mfc_err("Failed to allocate shared memory buffer\n");
  s5p_mfc_release_priv_buf(dev, &ctx->ctx);
  return ret;
 }


 ctx->shm.ofs = ctx->shm.dma - dev->dma_base[BANK_L_CTX];
 BUG_ON(ctx->shm.ofs & ((1 << MFC_BANK1_ALIGN_ORDER) - 1));

 memset(ctx->shm.virt, 0, buf_size->shm);
 wmb();
 return 0;
}
