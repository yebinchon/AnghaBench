
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cal_ctx {int external_rate; int csi2_port; int cc; } ;


 int CAL_CSI2_PHY_REG0 ;
 int CAL_CSI2_PHY_REG0_HSCLOCKCONFIG_DISABLE ;
 int CAL_CSI2_PHY_REG0_HSCLOCKCONFIG_MASK ;
 int CAL_CSI2_PHY_REG0_THS_SETTLE_MASK ;
 int CAL_CSI2_PHY_REG0_THS_TERM_MASK ;
 int CAL_CSI2_PHY_REG1 ;
 int CAL_CSI2_PHY_REG1_CTRLCLK_DIV_FACTOR_MASK ;
 int CAL_CSI2_PHY_REG1_DPHY_HS_SYNC_PATTERN_MASK ;
 int CAL_CSI2_PHY_REG1_TCLK_SETTLE_MASK ;
 int CAL_CSI2_PHY_REG1_TCLK_TERM_MASK ;
 int TCLK_MISS ;
 int TCLK_SETTLE ;
 int TCLK_TERM ;
 unsigned int THS_SETTLE ;
 int ctx_dbg (int,struct cal_ctx*,char*,int,...) ;
 unsigned int reg_read (int ,int ) ;
 int reg_write (int ,int ,unsigned int) ;
 int set_field (unsigned int*,int,int ) ;

__attribute__((used)) static void csi2_phy_config(struct cal_ctx *ctx)
{
 unsigned int reg0, reg1;
 unsigned int ths_term, ths_settle;
 unsigned int ddrclkperiod_us;




 ddrclkperiod_us = ctx->external_rate / 2000000;
 ddrclkperiod_us = 1000000 / ddrclkperiod_us;
 ctx_dbg(1, ctx, "ddrclkperiod_us: %d\n", ddrclkperiod_us);

 ths_term = 20000 / ddrclkperiod_us;
 ths_term = (ths_term >= 2) ? ths_term - 2 : ths_term;
 ctx_dbg(1, ctx, "ths_term: %d (0x%02x)\n", ths_term, ths_term);
 ths_settle = THS_SETTLE;
 ctx_dbg(1, ctx, "ths_settle: %d (0x%02x)\n", ths_settle, ths_settle);

 reg0 = reg_read(ctx->cc, CAL_CSI2_PHY_REG0);
 set_field(&reg0, CAL_CSI2_PHY_REG0_HSCLOCKCONFIG_DISABLE,
    CAL_CSI2_PHY_REG0_HSCLOCKCONFIG_MASK);
 set_field(&reg0, ths_term, CAL_CSI2_PHY_REG0_THS_TERM_MASK);
 set_field(&reg0, ths_settle, CAL_CSI2_PHY_REG0_THS_SETTLE_MASK);

 ctx_dbg(1, ctx, "CSI2_%d_REG0 = 0x%08x\n", (ctx->csi2_port - 1), reg0);
 reg_write(ctx->cc, CAL_CSI2_PHY_REG0, reg0);

 reg1 = reg_read(ctx->cc, CAL_CSI2_PHY_REG1);
 set_field(&reg1, TCLK_TERM, CAL_CSI2_PHY_REG1_TCLK_TERM_MASK);
 set_field(&reg1, 0xb8, CAL_CSI2_PHY_REG1_DPHY_HS_SYNC_PATTERN_MASK);
 set_field(&reg1, TCLK_MISS, CAL_CSI2_PHY_REG1_CTRLCLK_DIV_FACTOR_MASK);
 set_field(&reg1, TCLK_SETTLE, CAL_CSI2_PHY_REG1_TCLK_SETTLE_MASK);

 ctx_dbg(1, ctx, "CSI2_%d_REG1 = 0x%08x\n", (ctx->csi2_port - 1), reg1);
 reg_write(ctx->cc, CAL_CSI2_PHY_REG1, reg1);
}
