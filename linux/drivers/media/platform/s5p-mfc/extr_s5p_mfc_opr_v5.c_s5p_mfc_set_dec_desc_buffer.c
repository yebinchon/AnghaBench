
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct s5p_mfc_dev {TYPE_2__* variant; } ;
struct TYPE_6__ {int dma; } ;
struct s5p_mfc_ctx {TYPE_3__ dsc; struct s5p_mfc_dev* dev; } ;
struct s5p_mfc_buf_size_v5 {int dsc; } ;
struct TYPE_5__ {TYPE_1__* buf_size; } ;
struct TYPE_4__ {struct s5p_mfc_buf_size_v5* priv; } ;


 int OFFSETA (int ) ;
 int S5P_FIMV_SI_CH0_DESC_ADR ;
 int S5P_FIMV_SI_CH0_DESC_SIZE ;
 int mfc_write (struct s5p_mfc_dev*,int ,int ) ;

__attribute__((used)) static void s5p_mfc_set_dec_desc_buffer(struct s5p_mfc_ctx *ctx)
{
 struct s5p_mfc_dev *dev = ctx->dev;
 struct s5p_mfc_buf_size_v5 *buf_size = dev->variant->buf_size->priv;

 mfc_write(dev, OFFSETA(ctx->dsc.dma), S5P_FIMV_SI_CH0_DESC_ADR);
 mfc_write(dev, buf_size->dsc, S5P_FIMV_SI_CH0_DESC_SIZE);
}
