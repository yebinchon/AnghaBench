
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cal_ctx {int csi2_port; int virtual_channel; int dev; } ;


 int CAL_CSI2_CTX0 (int) ;
 int CAL_CSI2_CTX_ATT_MASK ;
 int CAL_CSI2_CTX_ATT_PIX ;
 int CAL_CSI2_CTX_CPORT_MASK ;
 int CAL_CSI2_CTX_DT_MASK ;
 int CAL_CSI2_CTX_LINES_MASK ;
 int CAL_CSI2_CTX_PACK_MODE_LINE ;
 int CAL_CSI2_CTX_PACK_MODE_MASK ;
 int CAL_CSI2_CTX_VC_MASK ;
 int ctx_dbg (int,struct cal_ctx*,char*,int,int ) ;
 int reg_read (int ,int ) ;
 int reg_write (int ,int ,int ) ;
 int set_field (int *,int,int ) ;

__attribute__((used)) static void csi2_ctx_config(struct cal_ctx *ctx)
{
 u32 val;

 val = reg_read(ctx->dev, CAL_CSI2_CTX0(ctx->csi2_port));
 set_field(&val, ctx->csi2_port, CAL_CSI2_CTX_CPORT_MASK);
 set_field(&val, 0x1, CAL_CSI2_CTX_DT_MASK);

 set_field(&val, ctx->virtual_channel, CAL_CSI2_CTX_VC_MASK);

 set_field(&val, 0, CAL_CSI2_CTX_LINES_MASK);
 set_field(&val, CAL_CSI2_CTX_ATT_PIX, CAL_CSI2_CTX_ATT_MASK);
 set_field(&val, CAL_CSI2_CTX_PACK_MODE_LINE,
    CAL_CSI2_CTX_PACK_MODE_MASK);
 reg_write(ctx->dev, CAL_CSI2_CTX0(ctx->csi2_port), val);
 ctx_dbg(3, ctx, "CAL_CSI2_CTX0(%d) = 0x%08x\n", ctx->csi2_port,
  reg_read(ctx->dev, CAL_CSI2_CTX0(ctx->csi2_port)));
}
