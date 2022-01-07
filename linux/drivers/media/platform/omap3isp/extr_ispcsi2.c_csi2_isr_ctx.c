
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isp_device {int dummy; } ;
struct isp_csi2_device {scalar_t__ frame_skip; int output; int regs1; struct isp_device* isp; } ;
struct isp_csi2_ctx_cfg {unsigned int ctxnum; int format_id; } ;


 int CSI2_OUTPUT_MEMORY ;
 int ISPCSI2_CTX_IRQSTATUS (unsigned int) ;
 int ISPCSI2_CTX_IRQSTATUS_FE_IRQ ;
 int csi2_ctx_config (struct isp_device*,struct isp_csi2_device*,struct isp_csi2_ctx_cfg*) ;
 int csi2_ctx_enable (struct isp_device*,struct isp_csi2_device*,unsigned int,int) ;
 int csi2_ctx_map_format (struct isp_csi2_device*) ;
 int csi2_isr_buffer (struct isp_csi2_device*) ;
 int isp_reg_readl (struct isp_device*,int ,int ) ;
 int isp_reg_writel (struct isp_device*,int,int ,int ) ;

__attribute__((used)) static void csi2_isr_ctx(struct isp_csi2_device *csi2,
    struct isp_csi2_ctx_cfg *ctx)
{
 struct isp_device *isp = csi2->isp;
 unsigned int n = ctx->ctxnum;
 u32 status;

 status = isp_reg_readl(isp, csi2->regs1, ISPCSI2_CTX_IRQSTATUS(n));
 isp_reg_writel(isp, status, csi2->regs1, ISPCSI2_CTX_IRQSTATUS(n));

 if (!(status & ISPCSI2_CTX_IRQSTATUS_FE_IRQ))
  return;
 if (csi2->frame_skip) {
  csi2->frame_skip--;
  if (csi2->frame_skip == 0) {
   ctx->format_id = csi2_ctx_map_format(csi2);
   csi2_ctx_config(isp, csi2, ctx);
   csi2_ctx_enable(isp, csi2, n, 1);
  }
  return;
 }

 if (csi2->output & CSI2_OUTPUT_MEMORY)
  csi2_isr_buffer(csi2);
}
