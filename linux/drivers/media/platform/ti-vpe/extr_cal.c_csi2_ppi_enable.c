
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cal_ctx {int csi2_port; int dev; } ;


 int CAL_CSI2_PPI_CTRL (int ) ;
 int CAL_CSI2_PPI_CTRL_IF_EN_MASK ;
 int CAL_GEN_ENABLE ;
 int reg_write_field (int ,int ,int ,int ) ;

__attribute__((used)) static void csi2_ppi_enable(struct cal_ctx *ctx)
{
 reg_write_field(ctx->dev, CAL_CSI2_PPI_CTRL(ctx->csi2_port),
   CAL_GEN_ENABLE, CAL_CSI2_PPI_CTRL_IF_EN_MASK);
}
