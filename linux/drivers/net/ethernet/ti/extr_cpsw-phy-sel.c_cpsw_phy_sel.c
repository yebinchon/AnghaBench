
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct device {int of_node; } ;
struct cpsw_phy_sel_priv {int (* cpsw_phy_sel ) (struct cpsw_phy_sel_priv*,int ,int) ;} ;
typedef int phy_interface_t ;


 struct device* bus_find_device (int *,int *,struct device_node*,int ) ;
 int dev_err (struct device*,char*,...) ;
 struct cpsw_phy_sel_priv* dev_get_drvdata (struct device*) ;
 int match ;
 struct device_node* of_get_child_by_name (int ,char*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;
 int platform_bus_type ;
 int put_device (struct device*) ;
 int stub1 (struct cpsw_phy_sel_priv*,int ,int) ;

void cpsw_phy_sel(struct device *dev, phy_interface_t phy_mode, int slave)
{
 struct device_node *node;
 struct cpsw_phy_sel_priv *priv;

 node = of_parse_phandle(dev->of_node, "cpsw-phy-sel", 0);
 if (!node) {
  node = of_get_child_by_name(dev->of_node, "cpsw-phy-sel");
  if (!node) {
   dev_err(dev, "Phy mode driver DT not found\n");
   return;
  }
 }

 dev = bus_find_device(&platform_bus_type, ((void*)0), node, match);
 if (!dev) {
  dev_err(dev, "unable to find platform device for %pOF\n", node);
  goto out;
 }

 priv = dev_get_drvdata(dev);

 priv->cpsw_phy_sel(priv, phy_mode, slave);

 put_device(dev);
out:
 of_node_put(node);
}
