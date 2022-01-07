
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct s5p_mfc_dev {TYPE_2__* variant; } ;
struct TYPE_6__ {int dma; int size; int virt; } ;
struct s5p_mfc_ctx {TYPE_3__ dsc; struct s5p_mfc_dev* dev; } ;
struct s5p_mfc_buf_size_v5 {int dsc; } ;
struct TYPE_5__ {TYPE_1__* buf_size; } ;
struct TYPE_4__ {struct s5p_mfc_buf_size_v5* priv; } ;


 int BANK_L_CTX ;
 int BUG_ON (int) ;
 int MFC_BANK1_ALIGN_ORDER ;
 int memset (int ,int ,int ) ;
 int mfc_err (char*) ;
 int s5p_mfc_alloc_priv_buf (struct s5p_mfc_dev*,int ,TYPE_3__*) ;
 int wmb () ;

__attribute__((used)) static int s5p_mfc_alloc_dec_temp_buffers_v5(struct s5p_mfc_ctx *ctx)
{
 struct s5p_mfc_dev *dev = ctx->dev;
 struct s5p_mfc_buf_size_v5 *buf_size = dev->variant->buf_size->priv;
 int ret;

 ctx->dsc.size = buf_size->dsc;
 ret = s5p_mfc_alloc_priv_buf(dev, BANK_L_CTX, &ctx->dsc);
 if (ret) {
  mfc_err("Failed to allocate temporary buffer\n");
  return ret;
 }

 BUG_ON(ctx->dsc.dma & ((1 << MFC_BANK1_ALIGN_ORDER) - 1));
 memset(ctx->dsc.virt, 0, ctx->dsc.size);
 wmb();
 return 0;
}
