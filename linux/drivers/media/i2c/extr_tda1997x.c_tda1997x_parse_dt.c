
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {unsigned int flags; int bus_width; } ;
struct TYPE_7__ {TYPE_2__ parallel; } ;
struct v4l2_fwnode_endpoint {TYPE_3__ bus; int bus_type; } ;
struct tda1997x_platform_data {int vidout_inv_hs; int vidout_inv_vs; int vidout_inv_de; int* vidout_port_cfg; int audout_layoutauto; int audout_layout; int audout_width; int audout_mclk_fs; int audout_format; int vidout_bus_width; int vidout_bus_type; int vidout_sel_de; int vidout_sel_vs; int vidout_sel_hs; } ;
struct tda1997x_state {TYPE_4__* client; struct tda1997x_platform_data pdata; } ;
struct device_node {int dummy; } ;
struct TYPE_5__ {struct device_node* of_node; } ;
struct TYPE_8__ {TYPE_1__ dev; } ;


 int AUDFMT_TYPE_DISABLED ;
 int AUDFMT_TYPE_I2S ;
 int AUDFMT_TYPE_SPDIF ;
 int DE_FREF_SEL_DE_VHREF ;
 int EINVAL ;
 int HS_HREF_SEL_HREF_VHREF ;
 unsigned int V4L2_MBUS_DATA_ACTIVE_LOW ;
 unsigned int V4L2_MBUS_HSYNC_ACTIVE_LOW ;
 unsigned int V4L2_MBUS_VSYNC_ACTIVE_LOW ;
 int VS_VREF_SEL_VREF_HDMI ;
 int of_fwnode_handle (struct device_node*) ;
 struct device_node* of_graph_get_next_endpoint (struct device_node*,int *) ;
 int of_node_put (struct device_node*) ;
 int of_property_count_u32_elems (struct device_node*,char*) ;
 int of_property_read_string (struct device_node*,char*,char const**) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int of_property_read_u32_index (struct device_node*,char*,int,int*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int v4l2_fwnode_endpoint_parse (int ,struct v4l2_fwnode_endpoint*) ;
 int v4l_err (TYPE_4__*,char*) ;

__attribute__((used)) static int tda1997x_parse_dt(struct tda1997x_state *state)
{
 struct tda1997x_platform_data *pdata = &state->pdata;
 struct v4l2_fwnode_endpoint bus_cfg = { .bus_type = 0 };
 struct device_node *ep;
 struct device_node *np;
 unsigned int flags;
 const char *str;
 int ret;
 u32 v;
 pdata->vidout_sel_hs = HS_HREF_SEL_HREF_VHREF;
 pdata->vidout_sel_vs = VS_VREF_SEL_VREF_HDMI;
 pdata->vidout_sel_de = DE_FREF_SEL_DE_VHREF;

 np = state->client->dev.of_node;
 ep = of_graph_get_next_endpoint(np, ((void*)0));
 if (!ep)
  return -EINVAL;

 ret = v4l2_fwnode_endpoint_parse(of_fwnode_handle(ep), &bus_cfg);
 if (ret) {
  of_node_put(ep);
  return ret;
 }
 of_node_put(ep);
 pdata->vidout_bus_type = bus_cfg.bus_type;


 flags = bus_cfg.bus.parallel.flags;
 if (flags & V4L2_MBUS_HSYNC_ACTIVE_LOW)
  pdata->vidout_inv_hs = 1;
 if (flags & V4L2_MBUS_VSYNC_ACTIVE_LOW)
  pdata->vidout_inv_vs = 1;
 if (flags & V4L2_MBUS_DATA_ACTIVE_LOW)
  pdata->vidout_inv_de = 1;
 pdata->vidout_bus_width = bus_cfg.bus.parallel.bus_width;


 ret = of_property_count_u32_elems(np, "nxp,vidout-portcfg");
 if (ret > 0) {
  u32 reg, val, i;

  for (i = 0; i < ret / 2 && i < 9; i++) {
   of_property_read_u32_index(np, "nxp,vidout-portcfg",
         i * 2, &reg);
   of_property_read_u32_index(np, "nxp,vidout-portcfg",
         i * 2 + 1, &val);
   if (reg < 9)
    pdata->vidout_port_cfg[reg] = val;
  }
 } else {
  v4l_err(state->client, "nxp,vidout-portcfg missing\n");
  return -EINVAL;
 }


 pdata->audout_layoutauto = 1;

 pdata->audout_format = AUDFMT_TYPE_DISABLED;
 if (!of_property_read_string(np, "nxp,audout-format", &str)) {
  if (strcmp(str, "i2s") == 0)
   pdata->audout_format = AUDFMT_TYPE_I2S;
  else if (strcmp(str, "spdif") == 0)
   pdata->audout_format = AUDFMT_TYPE_SPDIF;
  else {
   v4l_err(state->client, "nxp,audout-format invalid\n");
   return -EINVAL;
  }
  if (!of_property_read_u32(np, "nxp,audout-layout", &v)) {
   switch (v) {
   case 0:
   case 1:
    break;
   default:
    v4l_err(state->client,
     "nxp,audout-layout invalid\n");
    return -EINVAL;
   }
   pdata->audout_layout = v;
  }
  if (!of_property_read_u32(np, "nxp,audout-width", &v)) {
   switch (v) {
   case 16:
   case 32:
    break;
   default:
    v4l_err(state->client,
     "nxp,audout-width invalid\n");
    return -EINVAL;
   }
   pdata->audout_width = v;
  }
  if (!of_property_read_u32(np, "nxp,audout-mclk-fs", &v)) {
   switch (v) {
   case 512:
   case 256:
   case 128:
   case 64:
   case 32:
   case 16:
    break;
   default:
    v4l_err(state->client,
     "nxp,audout-mclk-fs invalid\n");
    return -EINVAL;
   }
   pdata->audout_mclk_fs = v;
  }
 }

 return 0;
}
