
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct cal_ctx {int csi2_port; TYPE_1__* dev; } ;
struct TYPE_5__ {int base; } ;
struct TYPE_4__ {TYPE_2__* cm; } ;


 int CM_CAMERRX_CTRL_CSI0_CTRLCLKEN_MASK ;
 int CM_CAMERRX_CTRL_CSI1_CTRLCLKEN_MASK ;
 int CM_CTRL_CORE_CAMERRX_CONTROL ;
 int ctx_err (struct cal_ctx*,char*) ;
 int reg_read (TYPE_2__*,int ) ;
 int reg_write (TYPE_2__*,int ,int ) ;
 int set_field (int *,int,int ) ;

__attribute__((used)) static void camerarx_phy_disable(struct cal_ctx *ctx)
{
 u32 val;

 if (!ctx->dev->cm->base) {
  ctx_err(ctx, "cm not mapped\n");
  return;
 }

 val = reg_read(ctx->dev->cm, CM_CTRL_CORE_CAMERRX_CONTROL);
 if (ctx->csi2_port == 1)
  set_field(&val, 0x0, CM_CAMERRX_CTRL_CSI0_CTRLCLKEN_MASK);
 else if (ctx->csi2_port == 2)
  set_field(&val, 0x0, CM_CAMERRX_CTRL_CSI1_CTRLCLKEN_MASK);
 reg_write(ctx->dev->cm, CM_CTRL_CORE_CAMERRX_CONTROL, val);
}
