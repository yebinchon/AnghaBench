
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {unsigned int port; } ;
struct TYPE_6__ {unsigned int num_data_lanes; } ;
struct TYPE_7__ {TYPE_1__ mipi_csi2; } ;
struct v4l2_fwnode_endpoint {TYPE_4__ base; TYPE_2__ bus; int bus_type; } ;
struct device_node {int dummy; } ;
struct TYPE_10__ {unsigned int num_lanes; } ;
struct TYPE_8__ {unsigned int num_lanes; } ;
struct adv748x_state {TYPE_5__ txb; TYPE_3__ txa; } ;


 unsigned int ADV748X_PORT_TXA ;
 unsigned int ADV748X_PORT_TXB ;
 int EINVAL ;
 int V4L2_MBUS_CSI2_DPHY ;
 int adv_dbg (struct adv748x_state*,char*,unsigned int) ;
 int adv_err (struct adv748x_state*,char*,unsigned int) ;
 int of_fwnode_handle (struct device_node*) ;
 int v4l2_fwnode_endpoint_parse (int ,struct v4l2_fwnode_endpoint*) ;

__attribute__((used)) static int adv748x_parse_csi2_lanes(struct adv748x_state *state,
        unsigned int port,
        struct device_node *ep)
{
 struct v4l2_fwnode_endpoint vep;
 unsigned int num_lanes;
 int ret;

 if (port != ADV748X_PORT_TXA && port != ADV748X_PORT_TXB)
  return 0;

 vep.bus_type = V4L2_MBUS_CSI2_DPHY;
 ret = v4l2_fwnode_endpoint_parse(of_fwnode_handle(ep), &vep);
 if (ret)
  return ret;

 num_lanes = vep.bus.mipi_csi2.num_data_lanes;

 if (vep.base.port == ADV748X_PORT_TXA) {
  if (num_lanes != 1 && num_lanes != 2 && num_lanes != 4) {
   adv_err(state, "TXA: Invalid number (%u) of lanes\n",
    num_lanes);
   return -EINVAL;
  }

  state->txa.num_lanes = num_lanes;
  adv_dbg(state, "TXA: using %u lanes\n", state->txa.num_lanes);
 }

 if (vep.base.port == ADV748X_PORT_TXB) {
  if (num_lanes != 1) {
   adv_err(state, "TXB: Invalid number (%u) of lanes\n",
    num_lanes);
   return -EINVAL;
  }

  state->txb.num_lanes = num_lanes;
  adv_dbg(state, "TXB: using %u lanes\n", state->txb.num_lanes);
 }

 return 0;
}
