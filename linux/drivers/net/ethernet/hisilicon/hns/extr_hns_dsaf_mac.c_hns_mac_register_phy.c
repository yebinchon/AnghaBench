
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mii_bus {int dummy; } ;
struct hns_mac_cb {int mac_id; int dev; int fw_port; } ;
struct fwnode_reference_args {int fwnode; } ;


 int EINVAL ;
 int ENODEV ;
 int EPROBE_DEFER ;
 int acpi_node_get_property_reference (int ,char*,int ,struct fwnode_reference_args*) ;
 int dev_dbg (int ,char*,int ,int) ;
 int dev_err (int ,char*,int ) ;
 struct platform_device* hns_dsaf_find_platform_device (int ) ;
 int hns_mac_phy_parse_addr (int ,int ) ;
 int hns_mac_register_phydev (struct mii_bus*,struct hns_mac_cb*,int) ;
 int is_acpi_device_node (int ) ;
 struct mii_bus* platform_get_drvdata (struct platform_device*) ;
 int to_acpi_device_node (int ) ;

__attribute__((used)) static int hns_mac_register_phy(struct hns_mac_cb *mac_cb)
{
 struct fwnode_reference_args args;
 struct platform_device *pdev;
 struct mii_bus *mii_bus;
 int rc;
 int addr;


 if (!to_acpi_device_node(mac_cb->fw_port))
  return -ENODEV;

 rc = acpi_node_get_property_reference(
   mac_cb->fw_port, "mdio-node", 0, &args);
 if (rc)
  return rc;
 if (!is_acpi_device_node(args.fwnode))
  return -EINVAL;

 addr = hns_mac_phy_parse_addr(mac_cb->dev, mac_cb->fw_port);
 if (addr < 0)
  return addr;


 pdev = hns_dsaf_find_platform_device(args.fwnode);
 if (!pdev) {
  dev_err(mac_cb->dev, "mac%d mdio pdev is NULL\n",
   mac_cb->mac_id);
  return -EINVAL;
 }

 mii_bus = platform_get_drvdata(pdev);
 if (!mii_bus) {
  dev_err(mac_cb->dev,
   "mac%d mdio is NULL, dsaf will probe again later\n",
   mac_cb->mac_id);
  return -EPROBE_DEFER;
 }

 rc = hns_mac_register_phydev(mii_bus, mac_cb, addr);
 if (!rc)
  dev_dbg(mac_cb->dev, "mac%d register phy addr:%d\n",
   mac_cb->mac_id, addr);

 return rc;
}
