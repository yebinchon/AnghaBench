
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cal_ctx {int csi2_port; int dev; } ;


 int CAL_GEN_ENABLE ;
 int CAL_PIX_PROC (int ) ;
 int CAL_PIX_PROC_CPORT_MASK ;
 int CAL_PIX_PROC_DPCMD_BYPASS ;
 int CAL_PIX_PROC_DPCMD_MASK ;
 int CAL_PIX_PROC_DPCME_BYPASS ;
 int CAL_PIX_PROC_DPCME_MASK ;
 int CAL_PIX_PROC_EN_MASK ;
 int CAL_PIX_PROC_EXTRACT_B8 ;
 int CAL_PIX_PROC_EXTRACT_MASK ;
 int CAL_PIX_PROC_PACK_B8 ;
 int CAL_PIX_PROC_PACK_MASK ;
 int ctx_dbg (int,struct cal_ctx*,char*,int ,int ) ;
 int reg_read (int ,int ) ;
 int reg_write (int ,int ,int ) ;
 int set_field (int *,int ,int ) ;

__attribute__((used)) static void pix_proc_config(struct cal_ctx *ctx)
{
 u32 val;

 val = reg_read(ctx->dev, CAL_PIX_PROC(ctx->csi2_port));
 set_field(&val, CAL_PIX_PROC_EXTRACT_B8, CAL_PIX_PROC_EXTRACT_MASK);
 set_field(&val, CAL_PIX_PROC_DPCMD_BYPASS, CAL_PIX_PROC_DPCMD_MASK);
 set_field(&val, CAL_PIX_PROC_DPCME_BYPASS, CAL_PIX_PROC_DPCME_MASK);
 set_field(&val, CAL_PIX_PROC_PACK_B8, CAL_PIX_PROC_PACK_MASK);
 set_field(&val, ctx->csi2_port, CAL_PIX_PROC_CPORT_MASK);
 set_field(&val, CAL_GEN_ENABLE, CAL_PIX_PROC_EN_MASK);
 reg_write(ctx->dev, CAL_PIX_PROC(ctx->csi2_port), val);
 ctx_dbg(3, ctx, "CAL_PIX_PROC(%d) = 0x%08x\n", ctx->csi2_port,
  reg_read(ctx->dev, CAL_PIX_PROC(ctx->csi2_port)));
}
