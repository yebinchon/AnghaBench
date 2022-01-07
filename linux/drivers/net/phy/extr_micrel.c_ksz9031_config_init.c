
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {struct device* parent; struct device_node* of_node; } ;
struct TYPE_2__ {struct device dev; } ;
struct phy_device {TYPE_1__ mdio; } ;
struct device_node {int dummy; } ;


 int CTL1000_AS_MASTER ;
 int CTL1000_ENABLE_MASTER ;
 int MII_CTRL1000 ;
 int MII_KSZ9031RN_CLK_PAD_SKEW ;
 int MII_KSZ9031RN_CONTROL_PAD_SKEW ;
 int MII_KSZ9031RN_RX_DATA_PAD_SKEW ;
 int MII_KSZ9031RN_TX_DATA_PAD_SKEW ;
 int ksz9031_center_flp_timing (struct phy_device*) ;
 int ksz9031_enable_edpd (struct phy_device*) ;
 int ksz9031_of_load_skew_values (struct phy_device*,struct device_node const*,int ,int,char const**,int) ;
 scalar_t__ of_property_read_bool (struct device_node const*,char*) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;
 int phydev_err (struct phy_device*,char*) ;

__attribute__((used)) static int ksz9031_config_init(struct phy_device *phydev)
{
 const struct device *dev = &phydev->mdio.dev;
 const struct device_node *of_node = dev->of_node;
 static const char *clk_skews[2] = {"rxc-skew-ps", "txc-skew-ps"};
 static const char *rx_data_skews[4] = {
  "rxd0-skew-ps", "rxd1-skew-ps",
  "rxd2-skew-ps", "rxd3-skew-ps"
 };
 static const char *tx_data_skews[4] = {
  "txd0-skew-ps", "txd1-skew-ps",
  "txd2-skew-ps", "txd3-skew-ps"
 };
 static const char *control_skews[2] = {"txen-skew-ps", "rxdv-skew-ps"};
 const struct device *dev_walker;
 int result;

 result = ksz9031_enable_edpd(phydev);
 if (result < 0)
  return result;





 dev_walker = &phydev->mdio.dev;
 do {
  of_node = dev_walker->of_node;
  dev_walker = dev_walker->parent;
 } while (!of_node && dev_walker);

 if (of_node) {
  ksz9031_of_load_skew_values(phydev, of_node,
    MII_KSZ9031RN_CLK_PAD_SKEW, 5,
    clk_skews, 2);

  ksz9031_of_load_skew_values(phydev, of_node,
    MII_KSZ9031RN_CONTROL_PAD_SKEW, 4,
    control_skews, 2);

  ksz9031_of_load_skew_values(phydev, of_node,
    MII_KSZ9031RN_RX_DATA_PAD_SKEW, 4,
    rx_data_skews, 4);

  ksz9031_of_load_skew_values(phydev, of_node,
    MII_KSZ9031RN_TX_DATA_PAD_SKEW, 4,
    tx_data_skews, 4);
  if (of_property_read_bool(of_node, "micrel,force-master")) {
   result = phy_read(phydev, MII_CTRL1000);
   if (result < 0)
    goto err_force_master;


   result |= CTL1000_ENABLE_MASTER | CTL1000_AS_MASTER;
   result = phy_write(phydev, MII_CTRL1000, result);
   if (result < 0)
    goto err_force_master;
  }
 }

 return ksz9031_center_flp_timing(phydev);

err_force_master:
 phydev_err(phydev, "failed to force the phy to master mode\n");
 return result;
}
