
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cal_ctx {int dev; int csi2_port; } ;


 int CAL_CSI2_COMPLEXIO_CFG (int ) ;
 int CAL_CSI2_COMPLEXIO_CFG_PWR_CMD_MASK ;
 int CAL_CSI2_COMPLEXIO_CFG_PWR_CMD_STATE_ON ;
 int CAL_CSI2_COMPLEXIO_CFG_PWR_STATUS_MASK ;
 scalar_t__ CAL_CSI2_COMPLEXIO_CFG_PWR_STATUS_STATE_ON ;
 int CAL_CSI2_COMPLEXIO_CFG_RESET_CTRL_MASK ;
 int CAL_CSI2_COMPLEXIO_CFG_RESET_CTRL_OPERATIONAL ;
 int CAL_CSI2_TIMING (int ) ;
 int CAL_CSI2_TIMING_FORCE_RX_MODE_IO1_MASK ;
 int CAL_CSI2_TIMING_STOP_STATE_COUNTER_IO1_MASK ;
 int CAL_CSI2_TIMING_STOP_STATE_X16_IO1_MASK ;
 int CAL_CSI2_TIMING_STOP_STATE_X4_IO1_MASK ;
 int CAL_CTRL ;
 int CAL_CTRL_BURSTSIZE_BURST128 ;
 int CAL_CTRL_BURSTSIZE_MASK ;
 int CAL_CTRL_MFLAGH_MASK ;
 int CAL_CTRL_MFLAGL_MASK ;
 int CAL_CTRL_POSTED_WRITES_MASK ;
 int CAL_CTRL_POSTED_WRITES_NONPOSTED ;
 int CAL_CTRL_TAGCNT_MASK ;
 int CAL_GEN_DISABLE ;
 int CAL_GEN_ENABLE ;
 int ctx_dbg (int,struct cal_ctx*,char*,int ,...) ;
 int reg_read (int ,int ) ;
 scalar_t__ reg_read_field (int ,int ,int ) ;
 int reg_write (int ,int ,int ) ;
 int set_field (int *,int,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void csi2_init(struct cal_ctx *ctx)
{
 int i;
 u32 val;

 val = reg_read(ctx->dev, CAL_CSI2_TIMING(ctx->csi2_port));
 set_field(&val, CAL_GEN_ENABLE,
    CAL_CSI2_TIMING_FORCE_RX_MODE_IO1_MASK);
 set_field(&val, CAL_GEN_ENABLE,
    CAL_CSI2_TIMING_STOP_STATE_X16_IO1_MASK);
 set_field(&val, CAL_GEN_DISABLE,
    CAL_CSI2_TIMING_STOP_STATE_X4_IO1_MASK);
 set_field(&val, 407, CAL_CSI2_TIMING_STOP_STATE_COUNTER_IO1_MASK);
 reg_write(ctx->dev, CAL_CSI2_TIMING(ctx->csi2_port), val);
 ctx_dbg(3, ctx, "CAL_CSI2_TIMING(%d) = 0x%08x\n", ctx->csi2_port,
  reg_read(ctx->dev, CAL_CSI2_TIMING(ctx->csi2_port)));

 val = reg_read(ctx->dev, CAL_CSI2_COMPLEXIO_CFG(ctx->csi2_port));
 set_field(&val, CAL_CSI2_COMPLEXIO_CFG_RESET_CTRL_OPERATIONAL,
    CAL_CSI2_COMPLEXIO_CFG_RESET_CTRL_MASK);
 set_field(&val, CAL_CSI2_COMPLEXIO_CFG_PWR_CMD_STATE_ON,
    CAL_CSI2_COMPLEXIO_CFG_PWR_CMD_MASK);
 reg_write(ctx->dev, CAL_CSI2_COMPLEXIO_CFG(ctx->csi2_port), val);
 for (i = 0; i < 10; i++) {
  if (reg_read_field(ctx->dev,
       CAL_CSI2_COMPLEXIO_CFG(ctx->csi2_port),
       CAL_CSI2_COMPLEXIO_CFG_PWR_STATUS_MASK) ==
      CAL_CSI2_COMPLEXIO_CFG_PWR_STATUS_STATE_ON)
   break;
  usleep_range(1000, 1100);
 }
 ctx_dbg(3, ctx, "CAL_CSI2_COMPLEXIO_CFG(%d) = 0x%08x\n", ctx->csi2_port,
  reg_read(ctx->dev, CAL_CSI2_COMPLEXIO_CFG(ctx->csi2_port)));

 val = reg_read(ctx->dev, CAL_CTRL);
 set_field(&val, CAL_CTRL_BURSTSIZE_BURST128, CAL_CTRL_BURSTSIZE_MASK);
 set_field(&val, 0xF, CAL_CTRL_TAGCNT_MASK);
 set_field(&val, CAL_CTRL_POSTED_WRITES_NONPOSTED,
    CAL_CTRL_POSTED_WRITES_MASK);
 set_field(&val, 0xFF, CAL_CTRL_MFLAGL_MASK);
 set_field(&val, 0xFF, CAL_CTRL_MFLAGH_MASK);
 reg_write(ctx->dev, CAL_CTRL, val);
 ctx_dbg(3, ctx, "CAL_CTRL = 0x%08x\n", reg_read(ctx->dev, CAL_CTRL));
}
