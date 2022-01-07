
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int* lane_polarities; scalar_t__ clock_lane; } ;
struct TYPE_5__ {TYPE_3__ mipi_csi2; } ;
struct v4l2_fwnode_endpoint {TYPE_2__ bus; } ;
struct TYPE_4__ {int clk_lane_reg1; } ;
struct mipid02_dev {TYPE_1__ r; struct v4l2_fwnode_endpoint rx; struct i2c_client* i2c_client; } ;
struct i2c_client {int dev; } ;


 int CLK_ENABLE ;
 int EINVAL ;
 int dev_err (int *,char*) ;

__attribute__((used)) static int mipid02_configure_clk_lane(struct mipid02_dev *bridge)
{
 struct i2c_client *client = bridge->i2c_client;
 struct v4l2_fwnode_endpoint *ep = &bridge->rx;
 bool *polarities = ep->bus.mipi_csi2.lane_polarities;


 if (ep->bus.mipi_csi2.clock_lane != 0) {
  dev_err(&client->dev, "clk lane must be map to lane 0\n");
  return -EINVAL;
 }
 bridge->r.clk_lane_reg1 |= (polarities[0] << 1) | CLK_ENABLE;

 return 0;
}
