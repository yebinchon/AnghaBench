
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct s5p_mfc_dev {TYPE_2__* variant; } ;
struct TYPE_6__ {int size; int virt; } ;
struct s5p_mfc_ctx {int codec_mode; TYPE_3__ ctx; struct s5p_mfc_dev* dev; } ;
struct s5p_mfc_buf_size_v6 {int other_enc_ctx; int hevc_enc_ctx; int h264_enc_ctx; int other_dec_ctx; int h264_dec_ctx; } ;
struct TYPE_5__ {TYPE_1__* buf_size; } ;
struct TYPE_4__ {struct s5p_mfc_buf_size_v6* priv; } ;


 int BANK_L_CTX ;
 int memset (int ,int ,int ) ;
 int mfc_debug_enter () ;
 int mfc_debug_leave () ;
 int mfc_err (char*,...) ;
 int s5p_mfc_alloc_priv_buf (struct s5p_mfc_dev*,int ,TYPE_3__*) ;
 int wmb () ;

__attribute__((used)) static int s5p_mfc_alloc_instance_buffer_v6(struct s5p_mfc_ctx *ctx)
{
 struct s5p_mfc_dev *dev = ctx->dev;
 struct s5p_mfc_buf_size_v6 *buf_size = dev->variant->buf_size->priv;
 int ret;

 mfc_debug_enter();

 switch (ctx->codec_mode) {
 case 140:
 case 138:
 case 137:
  ctx->ctx.size = buf_size->h264_dec_ctx;
  break;
 case 134:
 case 142:
 case 132:
 case 131:
 case 135:
 case 130:
 case 128:
  ctx->ctx.size = buf_size->other_dec_ctx;
  break;
 case 139:
  ctx->ctx.size = buf_size->h264_enc_ctx;
  break;
 case 136:
  ctx->ctx.size = buf_size->hevc_enc_ctx;
  break;
 case 133:
 case 141:
 case 129:
  ctx->ctx.size = buf_size->other_enc_ctx;
  break;
 default:
  ctx->ctx.size = 0;
  mfc_err("Codec type(%d) should be checked!\n", ctx->codec_mode);
  break;
 }

 ret = s5p_mfc_alloc_priv_buf(dev, BANK_L_CTX, &ctx->ctx);
 if (ret) {
  mfc_err("Failed to allocate instance buffer\n");
  return ret;
 }

 memset(ctx->ctx.virt, 0, ctx->ctx.size);
 wmb();

 mfc_debug_leave();

 return 0;
}
