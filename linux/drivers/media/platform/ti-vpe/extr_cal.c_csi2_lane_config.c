
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_fwnode_bus_mipi_csi2 {int num_data_lanes; scalar_t__* lane_polarities; scalar_t__* data_lanes; scalar_t__ clock_lane; } ;
struct TYPE_3__ {struct v4l2_fwnode_bus_mipi_csi2 mipi_csi2; } ;
struct TYPE_4__ {TYPE_1__ bus; } ;
struct cal_ctx {int csi2_port; int dev; TYPE_2__ endpoint; } ;


 int CAL_CSI2_COMPLEXIO_CFG (int ) ;
 int CAL_CSI2_COMPLEXIO_CFG_CLOCK_POL_MASK ;
 int CAL_CSI2_COMPLEXIO_CFG_CLOCK_POSITION_MASK ;
 int ctx_dbg (int,struct cal_ctx*,char*,int ,int) ;
 int reg_read (int ,int ) ;
 int reg_write (int ,int ,int) ;
 int set_field (int*,scalar_t__,int) ;

__attribute__((used)) static void csi2_lane_config(struct cal_ctx *ctx)
{
 u32 val = reg_read(ctx->dev, CAL_CSI2_COMPLEXIO_CFG(ctx->csi2_port));
 u32 lane_mask = CAL_CSI2_COMPLEXIO_CFG_CLOCK_POSITION_MASK;
 u32 polarity_mask = CAL_CSI2_COMPLEXIO_CFG_CLOCK_POL_MASK;
 struct v4l2_fwnode_bus_mipi_csi2 *mipi_csi2 =
  &ctx->endpoint.bus.mipi_csi2;
 int lane;

 set_field(&val, mipi_csi2->clock_lane + 1, lane_mask);
 set_field(&val, mipi_csi2->lane_polarities[0], polarity_mask);
 for (lane = 0; lane < mipi_csi2->num_data_lanes; lane++) {




  lane_mask <<= 4;
  polarity_mask <<= 4;
  set_field(&val, mipi_csi2->data_lanes[lane] + 1, lane_mask);
  set_field(&val, mipi_csi2->lane_polarities[lane + 1],
     polarity_mask);
 }

 reg_write(ctx->dev, CAL_CSI2_COMPLEXIO_CFG(ctx->csi2_port), val);
 ctx_dbg(3, ctx, "CAL_CSI2_COMPLEXIO_CFG(%d) = 0x%08x\n",
  ctx->csi2_port, val);
}
