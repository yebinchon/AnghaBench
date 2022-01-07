
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gswip_priv {int dev; int rcu_regmap; } ;
struct gswip_gphy_fw {int reset; int clk_gate; int fw_addr_offset; int fw_name; } ;


 int clk_disable_unprepare (int ) ;
 int dev_err (int ,char*) ;
 int regmap_write (int ,int ,int ) ;
 int reset_control_put (int ) ;

__attribute__((used)) static void gswip_gphy_fw_remove(struct gswip_priv *priv,
     struct gswip_gphy_fw *gphy_fw)
{
 int ret;


 if (!gphy_fw->fw_name)
  return;

 ret = regmap_write(priv->rcu_regmap, gphy_fw->fw_addr_offset, 0);
 if (ret)
  dev_err(priv->dev, "can not reset GPHY FW pointer");

 clk_disable_unprepare(gphy_fw->clk_gate);

 reset_control_put(gphy_fw->reset);
}
