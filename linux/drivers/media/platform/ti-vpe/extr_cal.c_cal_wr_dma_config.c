
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cal_ctx {unsigned int csi2_port; int dev; } ;


 unsigned int CAL_GEN_ENABLE ;
 int CAL_WR_DMA_CTRL (unsigned int) ;
 int CAL_WR_DMA_CTRL_CPORT_MASK ;
 int CAL_WR_DMA_CTRL_DTAG_MASK ;
 unsigned int CAL_WR_DMA_CTRL_DTAG_PIX_DAT ;
 unsigned int CAL_WR_DMA_CTRL_MODE_CONST ;
 int CAL_WR_DMA_CTRL_MODE_MASK ;
 unsigned int CAL_WR_DMA_CTRL_PATTERN_LINEAR ;
 int CAL_WR_DMA_CTRL_PATTERN_MASK ;
 int CAL_WR_DMA_CTRL_STALL_RD_MASK ;
 int CAL_WR_DMA_OFST (unsigned int) ;
 int CAL_WR_DMA_OFST_MASK ;
 int CAL_WR_DMA_XSIZE (unsigned int) ;
 int CAL_WR_DMA_XSIZE_MASK ;
 int CAL_WR_DMA_XSIZE_XSKIP_MASK ;
 int ctx_dbg (int,struct cal_ctx*,char*,unsigned int,int ) ;
 int reg_read (int ,int ) ;
 int reg_write (int ,int ,int ) ;
 int reg_write_field (int ,int ,unsigned int,int ) ;
 int set_field (int *,unsigned int,int ) ;

__attribute__((used)) static void cal_wr_dma_config(struct cal_ctx *ctx,
         unsigned int width)
{
 u32 val;

 val = reg_read(ctx->dev, CAL_WR_DMA_CTRL(ctx->csi2_port));
 set_field(&val, ctx->csi2_port, CAL_WR_DMA_CTRL_CPORT_MASK);
 set_field(&val, CAL_WR_DMA_CTRL_DTAG_PIX_DAT,
    CAL_WR_DMA_CTRL_DTAG_MASK);
 set_field(&val, CAL_WR_DMA_CTRL_MODE_CONST,
    CAL_WR_DMA_CTRL_MODE_MASK);
 set_field(&val, CAL_WR_DMA_CTRL_PATTERN_LINEAR,
    CAL_WR_DMA_CTRL_PATTERN_MASK);
 set_field(&val, CAL_GEN_ENABLE, CAL_WR_DMA_CTRL_STALL_RD_MASK);
 reg_write(ctx->dev, CAL_WR_DMA_CTRL(ctx->csi2_port), val);
 ctx_dbg(3, ctx, "CAL_WR_DMA_CTRL(%d) = 0x%08x\n", ctx->csi2_port,
  reg_read(ctx->dev, CAL_WR_DMA_CTRL(ctx->csi2_port)));





 reg_write_field(ctx->dev,
   CAL_WR_DMA_OFST(ctx->csi2_port),
   (width / 16),
   CAL_WR_DMA_OFST_MASK);
 ctx_dbg(3, ctx, "CAL_WR_DMA_OFST(%d) = 0x%08x\n", ctx->csi2_port,
  reg_read(ctx->dev, CAL_WR_DMA_OFST(ctx->csi2_port)));

 val = reg_read(ctx->dev, CAL_WR_DMA_XSIZE(ctx->csi2_port));

 set_field(&val, 0, CAL_WR_DMA_XSIZE_XSKIP_MASK);





 set_field(&val, (width / 8), CAL_WR_DMA_XSIZE_MASK);
 reg_write(ctx->dev, CAL_WR_DMA_XSIZE(ctx->csi2_port), val);
 ctx_dbg(3, ctx, "CAL_WR_DMA_XSIZE(%d) = 0x%08x\n", ctx->csi2_port,
  reg_read(ctx->dev, CAL_WR_DMA_XSIZE(ctx->csi2_port)));
}
