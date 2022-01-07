
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cal_ctx {int csi2_port; int dev; } ;


 int CAL_WR_DMA_ADDR (int ) ;
 int reg_write (int ,int ,unsigned int) ;

__attribute__((used)) static void cal_wr_dma_addr(struct cal_ctx *ctx, unsigned int dmaaddr)
{
 reg_write(ctx->dev, CAL_WR_DMA_ADDR(ctx->csi2_port), dmaaddr);
}
