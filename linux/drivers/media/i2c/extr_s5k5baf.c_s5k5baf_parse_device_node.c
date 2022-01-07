
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_data_lanes; } ;
struct TYPE_4__ {TYPE_1__ mipi_csi2; } ;
struct v4l2_fwnode_endpoint {TYPE_2__ bus; int bus_type; } ;
struct s5k5baf {int nlanes; int bus_type; int gpios; int mclk_frequency; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int EINVAL ;
 int S5K5BAF_DEFAULT_MCLK_FREQ ;


 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int ) ;
 int of_fwnode_handle (struct device_node*) ;
 struct device_node* of_graph_get_next_endpoint (struct device_node*,int *) ;
 int of_node_put (struct device_node*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int s5k5baf_parse_gpios (int ,struct device*) ;
 int v4l2_fwnode_endpoint_parse (int ,struct v4l2_fwnode_endpoint*) ;

__attribute__((used)) static int s5k5baf_parse_device_node(struct s5k5baf *state, struct device *dev)
{
 struct device_node *node = dev->of_node;
 struct device_node *node_ep;
 struct v4l2_fwnode_endpoint ep = { .bus_type = 0 };
 int ret;

 if (!node) {
  dev_err(dev, "no device-tree node provided\n");
  return -EINVAL;
 }

 ret = of_property_read_u32(node, "clock-frequency",
       &state->mclk_frequency);
 if (ret < 0) {
  state->mclk_frequency = S5K5BAF_DEFAULT_MCLK_FREQ;
  dev_info(dev, "using default %u Hz clock frequency\n",
    state->mclk_frequency);
 }

 ret = s5k5baf_parse_gpios(state->gpios, dev);
 if (ret < 0)
  return ret;

 node_ep = of_graph_get_next_endpoint(node, ((void*)0));
 if (!node_ep) {
  dev_err(dev, "no endpoint defined at node %pOF\n", node);
  return -EINVAL;
 }

 ret = v4l2_fwnode_endpoint_parse(of_fwnode_handle(node_ep), &ep);
 of_node_put(node_ep);
 if (ret)
  return ret;

 state->bus_type = ep.bus_type;

 switch (state->bus_type) {
 case 129:
  state->nlanes = ep.bus.mipi_csi2.num_data_lanes;
  break;
 case 128:
  break;
 default:
  dev_err(dev, "unsupported bus in endpoint defined at node %pOF\n",
   node);
  return -EINVAL;
 }

 return 0;
}
