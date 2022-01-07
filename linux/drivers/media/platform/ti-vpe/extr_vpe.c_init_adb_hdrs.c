
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpe_ctx {TYPE_1__* dev; } ;
struct TYPE_2__ {int csc; int sc; } ;


 int CFG_SC0 ;
 int CFG_SC17 ;
 int CFG_SC8 ;
 int CSC_CSC00 ;
 int GET_OFFSET_TOP (struct vpe_ctx*,int ,int ) ;
 int VPE_CLK_FORMAT_SELECT ;
 int VPE_DEI_FRAME_SIZE ;
 int VPE_SET_MMR_ADB_HDR (struct vpe_ctx*,int ,int ,int ) ;
 int VPE_US1_R0 ;
 int VPE_US2_R0 ;
 int VPE_US3_R0 ;
 int csc_hdr ;
 int csc_regs ;
 int dei_hdr ;
 int dei_regs ;
 int out_fmt_hdr ;
 int out_fmt_reg ;
 int sc_hdr0 ;
 int sc_hdr17 ;
 int sc_hdr8 ;
 int sc_regs0 ;
 int sc_regs17 ;
 int sc_regs8 ;
 int us1_hdr ;
 int us1_regs ;
 int us2_hdr ;
 int us2_regs ;
 int us3_hdr ;
 int us3_regs ;

__attribute__((used)) static void init_adb_hdrs(struct vpe_ctx *ctx)
{
 VPE_SET_MMR_ADB_HDR(ctx, out_fmt_hdr, out_fmt_reg, VPE_CLK_FORMAT_SELECT);
 VPE_SET_MMR_ADB_HDR(ctx, us1_hdr, us1_regs, VPE_US1_R0);
 VPE_SET_MMR_ADB_HDR(ctx, us2_hdr, us2_regs, VPE_US2_R0);
 VPE_SET_MMR_ADB_HDR(ctx, us3_hdr, us3_regs, VPE_US3_R0);
 VPE_SET_MMR_ADB_HDR(ctx, dei_hdr, dei_regs, VPE_DEI_FRAME_SIZE);
 VPE_SET_MMR_ADB_HDR(ctx, sc_hdr0, sc_regs0,
  GET_OFFSET_TOP(ctx, ctx->dev->sc, CFG_SC0));
 VPE_SET_MMR_ADB_HDR(ctx, sc_hdr8, sc_regs8,
  GET_OFFSET_TOP(ctx, ctx->dev->sc, CFG_SC8));
 VPE_SET_MMR_ADB_HDR(ctx, sc_hdr17, sc_regs17,
  GET_OFFSET_TOP(ctx, ctx->dev->sc, CFG_SC17));
 VPE_SET_MMR_ADB_HDR(ctx, csc_hdr, csc_regs,
  GET_OFFSET_TOP(ctx, ctx->dev->csc, CSC_CSC00));
}
