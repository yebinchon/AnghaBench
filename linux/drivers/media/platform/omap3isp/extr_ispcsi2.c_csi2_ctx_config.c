
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isp_device {int dummy; } ;
struct isp_csi2_device {int regs1; } ;
struct isp_csi2_ctx_cfg {int virtual_id; int format_id; int alpha; int data_offset; int ping_addr; int pong_addr; int ctxnum; scalar_t__ dpcm_predictor; scalar_t__ dpcm_decompress; scalar_t__ checksum_enabled; scalar_t__ eol_enabled; scalar_t__ eof_enabled; } ;


 int ISPCSI2_CTX_CTRL1 (int ) ;
 int ISPCSI2_CTX_CTRL1_CS_EN ;
 int ISPCSI2_CTX_CTRL1_EOF_EN ;
 int ISPCSI2_CTX_CTRL1_EOL_EN ;
 int ISPCSI2_CTX_CTRL2 (int ) ;
 int ISPCSI2_CTX_CTRL2_DPCM_PRED ;
 int ISPCSI2_CTX_CTRL2_FORMAT_MASK ;
 int ISPCSI2_CTX_CTRL2_FORMAT_SHIFT ;
 int ISPCSI2_CTX_CTRL2_USER_DEF_MAP_MASK ;
 int ISPCSI2_CTX_CTRL2_USER_DEF_MAP_SHIFT ;
 int ISPCSI2_CTX_CTRL2_VIRTUAL_ID_MASK ;
 int ISPCSI2_CTX_CTRL2_VIRTUAL_ID_SHIFT ;
 int ISPCSI2_CTX_CTRL3 (int ) ;
 int ISPCSI2_CTX_CTRL3_ALPHA_MASK ;
 int ISPCSI2_CTX_CTRL3_ALPHA_SHIFT ;
 int ISPCSI2_CTX_DAT_OFST (int ) ;
 int ISPCSI2_CTX_DAT_OFST_OFST_MASK ;
 int ISPCSI2_CTX_DAT_OFST_OFST_SHIFT ;
 int ISPCSI2_CTX_DAT_PING_ADDR (int ) ;
 int ISPCSI2_CTX_DAT_PONG_ADDR (int ) ;
 scalar_t__ is_usr_def_mapping (int) ;
 int isp_reg_readl (struct isp_device*,int ,int ) ;
 int isp_reg_writel (struct isp_device*,int,int ,int ) ;

__attribute__((used)) static void csi2_ctx_config(struct isp_device *isp,
       struct isp_csi2_device *csi2,
       struct isp_csi2_ctx_cfg *ctx)
{
 u32 reg;


 reg = isp_reg_readl(isp, csi2->regs1, ISPCSI2_CTX_CTRL1(ctx->ctxnum));

 if (ctx->eof_enabled)
  reg |= ISPCSI2_CTX_CTRL1_EOF_EN;
 else
  reg &= ~ISPCSI2_CTX_CTRL1_EOF_EN;

 if (ctx->eol_enabled)
  reg |= ISPCSI2_CTX_CTRL1_EOL_EN;
 else
  reg &= ~ISPCSI2_CTX_CTRL1_EOL_EN;

 if (ctx->checksum_enabled)
  reg |= ISPCSI2_CTX_CTRL1_CS_EN;
 else
  reg &= ~ISPCSI2_CTX_CTRL1_CS_EN;

 isp_reg_writel(isp, reg, csi2->regs1, ISPCSI2_CTX_CTRL1(ctx->ctxnum));


 reg = isp_reg_readl(isp, csi2->regs1, ISPCSI2_CTX_CTRL2(ctx->ctxnum));

 reg &= ~(ISPCSI2_CTX_CTRL2_VIRTUAL_ID_MASK);
 reg |= ctx->virtual_id << ISPCSI2_CTX_CTRL2_VIRTUAL_ID_SHIFT;

 reg &= ~(ISPCSI2_CTX_CTRL2_FORMAT_MASK);
 reg |= ctx->format_id << ISPCSI2_CTX_CTRL2_FORMAT_SHIFT;

 if (ctx->dpcm_decompress) {
  if (ctx->dpcm_predictor)
   reg |= ISPCSI2_CTX_CTRL2_DPCM_PRED;
  else
   reg &= ~ISPCSI2_CTX_CTRL2_DPCM_PRED;
 }

 if (is_usr_def_mapping(ctx->format_id)) {
  reg &= ~ISPCSI2_CTX_CTRL2_USER_DEF_MAP_MASK;
  reg |= 2 << ISPCSI2_CTX_CTRL2_USER_DEF_MAP_SHIFT;
 }

 isp_reg_writel(isp, reg, csi2->regs1, ISPCSI2_CTX_CTRL2(ctx->ctxnum));


 reg = isp_reg_readl(isp, csi2->regs1, ISPCSI2_CTX_CTRL3(ctx->ctxnum));
 reg &= ~(ISPCSI2_CTX_CTRL3_ALPHA_MASK);
 reg |= (ctx->alpha << ISPCSI2_CTX_CTRL3_ALPHA_SHIFT);

 isp_reg_writel(isp, reg, csi2->regs1, ISPCSI2_CTX_CTRL3(ctx->ctxnum));


 reg = isp_reg_readl(isp, csi2->regs1,
       ISPCSI2_CTX_DAT_OFST(ctx->ctxnum));
 reg &= ~ISPCSI2_CTX_DAT_OFST_OFST_MASK;
 reg |= ctx->data_offset << ISPCSI2_CTX_DAT_OFST_OFST_SHIFT;
 isp_reg_writel(isp, reg, csi2->regs1,
         ISPCSI2_CTX_DAT_OFST(ctx->ctxnum));

 isp_reg_writel(isp, ctx->ping_addr,
         csi2->regs1, ISPCSI2_CTX_DAT_PING_ADDR(ctx->ctxnum));

 isp_reg_writel(isp, ctx->pong_addr,
         csi2->regs1, ISPCSI2_CTX_DAT_PONG_ADDR(ctx->ctxnum));
}
