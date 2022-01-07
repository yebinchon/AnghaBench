
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ num_data_lanes; } ;
struct TYPE_6__ {TYPE_2__ mipi_csi2; } ;
struct v4l2_fwnode_endpoint {scalar_t__ bus_type; TYPE_3__ bus; } ;
struct s5c73m3_platform_data {int gpio_reset; int gpio_stby; int mclk_frequency; } ;
struct s5c73m3 {int mclk_frequency; int clock; int * gpio; TYPE_1__* i2c_client; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; struct s5c73m3_platform_data* platform_data; } ;
struct TYPE_4__ {struct device dev; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 size_t RST ;
 int S5C73M3_CLK_NAME ;
 int S5C73M3_DEFAULT_MCLK_FREQ ;
 scalar_t__ S5C73M3_MIPI_DATA_LANES ;
 size_t STBY ;
 scalar_t__ V4L2_MBUS_CSI2_DPHY ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,...) ;
 int dev_warn (struct device*,char*,struct device_node*) ;
 int devm_clk_get (struct device*,int ) ;
 int of_fwnode_handle (struct device_node*) ;
 struct device_node* of_graph_get_next_endpoint (struct device_node*,int *) ;
 int of_node_put (struct device_node*) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int *) ;
 int s5c73m3_parse_gpios (struct s5c73m3*) ;
 int v4l2_fwnode_endpoint_parse (int ,struct v4l2_fwnode_endpoint*) ;

__attribute__((used)) static int s5c73m3_get_platform_data(struct s5c73m3 *state)
{
 struct device *dev = &state->i2c_client->dev;
 const struct s5c73m3_platform_data *pdata = dev->platform_data;
 struct device_node *node = dev->of_node;
 struct device_node *node_ep;
 struct v4l2_fwnode_endpoint ep = { .bus_type = 0 };
 int ret;

 if (!node) {
  if (!pdata) {
   dev_err(dev, "Platform data not specified\n");
   return -EINVAL;
  }

  state->mclk_frequency = pdata->mclk_frequency;
  state->gpio[STBY] = pdata->gpio_stby;
  state->gpio[RST] = pdata->gpio_reset;
  return 0;
 }

 state->clock = devm_clk_get(dev, S5C73M3_CLK_NAME);
 if (IS_ERR(state->clock))
  return PTR_ERR(state->clock);

 if (of_property_read_u32(node, "clock-frequency",
     &state->mclk_frequency)) {
  state->mclk_frequency = S5C73M3_DEFAULT_MCLK_FREQ;
  dev_info(dev, "using default %u Hz clock frequency\n",
     state->mclk_frequency);
 }

 ret = s5c73m3_parse_gpios(state);
 if (ret < 0)
  return -EINVAL;

 node_ep = of_graph_get_next_endpoint(node, ((void*)0));
 if (!node_ep) {
  dev_warn(dev, "no endpoint defined for node: %pOF\n", node);
  return 0;
 }

 ret = v4l2_fwnode_endpoint_parse(of_fwnode_handle(node_ep), &ep);
 of_node_put(node_ep);
 if (ret)
  return ret;

 if (ep.bus_type != V4L2_MBUS_CSI2_DPHY) {
  dev_err(dev, "unsupported bus type\n");
  return -EINVAL;
 }




 if (ep.bus.mipi_csi2.num_data_lanes != S5C73M3_MIPI_DATA_LANES)
  dev_info(dev, "falling back to 4 MIPI CSI-2 data lanes\n");

 return 0;
}
