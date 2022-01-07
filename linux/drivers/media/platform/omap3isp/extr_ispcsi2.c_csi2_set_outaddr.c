
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct isp_device {int dummy; } ;
struct isp_csi2_device {int regs1; struct isp_csi2_ctx_cfg* contexts; struct isp_device* isp; } ;
struct isp_csi2_ctx_cfg {int ctxnum; void* pong_addr; void* ping_addr; } ;


 int ISPCSI2_CTX_DAT_PING_ADDR (int ) ;
 int ISPCSI2_CTX_DAT_PONG_ADDR (int ) ;
 int isp_reg_writel (struct isp_device*,void*,int ,int ) ;

__attribute__((used)) static void csi2_set_outaddr(struct isp_csi2_device *csi2, u32 addr)
{
 struct isp_device *isp = csi2->isp;
 struct isp_csi2_ctx_cfg *ctx = &csi2->contexts[0];

 ctx->ping_addr = addr;
 ctx->pong_addr = addr;
 isp_reg_writel(isp, ctx->ping_addr,
         csi2->regs1, ISPCSI2_CTX_DAT_PING_ADDR(ctx->ctxnum));
 isp_reg_writel(isp, ctx->pong_addr,
         csi2->regs1, ISPCSI2_CTX_DAT_PONG_ADDR(ctx->ctxnum));
}
