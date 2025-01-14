
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct v4l2_fwnode_bus_mipi_csi2 {unsigned int num_data_lanes; int * lane_polarities; int * data_lanes; int clock_lane; } ;
struct TYPE_12__ {struct v4l2_fwnode_bus_mipi_csi2 mipi_csi2; } ;
struct TYPE_11__ {int port; } ;
struct TYPE_9__ {int member_0; } ;
struct v4l2_fwnode_endpoint {TYPE_5__ bus; TYPE_4__ base; TYPE_2__ member_0; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_13__ {int pol; int pos; } ;
struct csiphy_lanes_cfg {unsigned int num_data; TYPE_7__* data; TYPE_6__ clk; } ;
struct TYPE_8__ {struct csiphy_lanes_cfg lane_cfg; } ;
struct TYPE_10__ {int csiphy_id; TYPE_1__ csi2; } ;
struct camss_async_subdev {TYPE_3__ interface; } ;
struct TYPE_14__ {int pol; int pos; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_7__* devm_kcalloc (struct device*,unsigned int,int,int ) ;
 int of_fwnode_handle (struct device_node*) ;
 int v4l2_fwnode_endpoint_parse (int ,struct v4l2_fwnode_endpoint*) ;

__attribute__((used)) static int camss_of_parse_endpoint_node(struct device *dev,
     struct device_node *node,
     struct camss_async_subdev *csd)
{
 struct csiphy_lanes_cfg *lncfg = &csd->interface.csi2.lane_cfg;
 struct v4l2_fwnode_bus_mipi_csi2 *mipi_csi2;
 struct v4l2_fwnode_endpoint vep = { { 0 } };
 unsigned int i;

 v4l2_fwnode_endpoint_parse(of_fwnode_handle(node), &vep);

 csd->interface.csiphy_id = vep.base.port;

 mipi_csi2 = &vep.bus.mipi_csi2;
 lncfg->clk.pos = mipi_csi2->clock_lane;
 lncfg->clk.pol = mipi_csi2->lane_polarities[0];
 lncfg->num_data = mipi_csi2->num_data_lanes;

 lncfg->data = devm_kcalloc(dev,
       lncfg->num_data, sizeof(*lncfg->data),
       GFP_KERNEL);
 if (!lncfg->data)
  return -ENOMEM;

 for (i = 0; i < lncfg->num_data; i++) {
  lncfg->data[i].pos = mipi_csi2->data_lanes[i];
  lncfg->data[i].pol = mipi_csi2->lane_polarities[i + 1];
 }

 return 0;
}
