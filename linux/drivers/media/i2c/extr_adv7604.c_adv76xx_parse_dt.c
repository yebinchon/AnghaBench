
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {unsigned int flags; } ;
struct TYPE_9__ {TYPE_3__ parallel; } ;
struct v4l2_fwnode_endpoint {scalar_t__ bus_type; TYPE_4__ bus; } ;
struct device_node {int dummy; } ;
struct TYPE_10__ {int default_input; int inv_hs_pol; int inv_vs_pol; int inv_llc_pol; int insert_av_codes; int blank_data; void* dr_str_sync; void* dr_str_clk; void* dr_str_data; int bus_order; int op_format_mode_sel; scalar_t__ disable_cable_det_rst; scalar_t__ disable_pwrdnb; int int1_config; } ;
struct adv76xx_state {TYPE_5__ pdata; TYPE_2__** i2c_clients; } ;
struct TYPE_6__ {struct device_node* of_node; } ;
struct TYPE_7__ {TYPE_1__ dev; } ;


 int ADV7604_BUS_ORDER_RGB ;
 int ADV7604_OP_FORMAT_MODE0 ;
 void* ADV76XX_DR_STR_MEDIUM_HIGH ;
 int ADV76XX_INT1_CONFIG_ACTIVE_HIGH ;
 size_t ADV76XX_PAGE_IO ;
 int EINVAL ;
 scalar_t__ V4L2_MBUS_BT656 ;
 unsigned int V4L2_MBUS_HSYNC_ACTIVE_HIGH ;
 unsigned int V4L2_MBUS_PCLK_SAMPLE_RISING ;
 unsigned int V4L2_MBUS_VSYNC_ACTIVE_HIGH ;
 int of_fwnode_handle (struct device_node*) ;
 struct device_node* of_graph_get_next_endpoint (struct device_node*,int *) ;
 int of_node_put (struct device_node*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int v4l2_fwnode_endpoint_parse (int ,struct v4l2_fwnode_endpoint*) ;

__attribute__((used)) static int adv76xx_parse_dt(struct adv76xx_state *state)
{
 struct v4l2_fwnode_endpoint bus_cfg = { .bus_type = 0 };
 struct device_node *endpoint;
 struct device_node *np;
 unsigned int flags;
 int ret;
 u32 v;

 np = state->i2c_clients[ADV76XX_PAGE_IO]->dev.of_node;


 endpoint = of_graph_get_next_endpoint(np, ((void*)0));
 if (!endpoint)
  return -EINVAL;

 ret = v4l2_fwnode_endpoint_parse(of_fwnode_handle(endpoint), &bus_cfg);
 of_node_put(endpoint);
 if (ret)
  return ret;

 if (!of_property_read_u32(np, "default-input", &v))
  state->pdata.default_input = v;
 else
  state->pdata.default_input = -1;

 flags = bus_cfg.bus.parallel.flags;

 if (flags & V4L2_MBUS_HSYNC_ACTIVE_HIGH)
  state->pdata.inv_hs_pol = 1;

 if (flags & V4L2_MBUS_VSYNC_ACTIVE_HIGH)
  state->pdata.inv_vs_pol = 1;

 if (flags & V4L2_MBUS_PCLK_SAMPLE_RISING)
  state->pdata.inv_llc_pol = 1;

 if (bus_cfg.bus_type == V4L2_MBUS_BT656)
  state->pdata.insert_av_codes = 1;


 state->pdata.int1_config = ADV76XX_INT1_CONFIG_ACTIVE_HIGH;


 state->pdata.disable_pwrdnb = 0;
 state->pdata.disable_cable_det_rst = 0;
 state->pdata.blank_data = 1;
 state->pdata.op_format_mode_sel = ADV7604_OP_FORMAT_MODE0;
 state->pdata.bus_order = ADV7604_BUS_ORDER_RGB;
 state->pdata.dr_str_data = ADV76XX_DR_STR_MEDIUM_HIGH;
 state->pdata.dr_str_clk = ADV76XX_DR_STR_MEDIUM_HIGH;
 state->pdata.dr_str_sync = ADV76XX_DR_STR_MEDIUM_HIGH;

 return 0;
}
