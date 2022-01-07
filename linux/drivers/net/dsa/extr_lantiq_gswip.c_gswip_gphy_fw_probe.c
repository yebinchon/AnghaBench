
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct gswip_priv {TYPE_1__* gphy_fw_name_cfg; struct device* dev; } ;
struct gswip_gphy_fw {int fw_addr_offset; int reset; int fw_name; int clk_gate; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
typedef int gphyname ;
struct TYPE_2__ {int ge_firmware_name; int fe_firmware_name; } ;


 int EINVAL ;
 int EPROBE_DEFER ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,...) ;
 int devm_clk_get (struct device*,char*) ;
 int gswip_gphy_fw_load (struct gswip_priv*,struct gswip_gphy_fw*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int of_reset_control_array_get_exclusive (struct device_node*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int gswip_gphy_fw_probe(struct gswip_priv *priv,
          struct gswip_gphy_fw *gphy_fw,
          struct device_node *gphy_fw_np, int i)
{
 struct device *dev = priv->dev;
 u32 gphy_mode;
 int ret;
 char gphyname[10];

 snprintf(gphyname, sizeof(gphyname), "gphy%d", i);

 gphy_fw->clk_gate = devm_clk_get(dev, gphyname);
 if (IS_ERR(gphy_fw->clk_gate)) {
  dev_err(dev, "Failed to lookup gate clock\n");
  return PTR_ERR(gphy_fw->clk_gate);
 }

 ret = of_property_read_u32(gphy_fw_np, "reg", &gphy_fw->fw_addr_offset);
 if (ret)
  return ret;

 ret = of_property_read_u32(gphy_fw_np, "lantiq,gphy-mode", &gphy_mode);

 if (ret)
  gphy_mode = 128;

 switch (gphy_mode) {
 case 129:
  gphy_fw->fw_name = priv->gphy_fw_name_cfg->fe_firmware_name;
  break;
 case 128:
  gphy_fw->fw_name = priv->gphy_fw_name_cfg->ge_firmware_name;
  break;
 default:
  dev_err(dev, "Unknown GPHY mode %d\n", gphy_mode);
  return -EINVAL;
 }

 gphy_fw->reset = of_reset_control_array_get_exclusive(gphy_fw_np);
 if (IS_ERR(gphy_fw->reset)) {
  if (PTR_ERR(gphy_fw->reset) != -EPROBE_DEFER)
   dev_err(dev, "Failed to lookup gphy reset\n");
  return PTR_ERR(gphy_fw->reset);
 }

 return gswip_gphy_fw_load(priv, gphy_fw);
}
