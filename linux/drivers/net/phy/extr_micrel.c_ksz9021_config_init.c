
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {struct device* parent; struct device_node* of_node; } ;
struct TYPE_2__ {struct device dev; } ;
struct phy_device {TYPE_1__ mdio; } ;
struct device_node {int dummy; } ;


 int MII_KSZPHY_CLK_CONTROL_PAD_SKEW ;
 int MII_KSZPHY_RX_DATA_PAD_SKEW ;
 int MII_KSZPHY_TX_DATA_PAD_SKEW ;
 int ksz9021_load_values_from_of (struct phy_device*,struct device_node const*,int ,char*,char*,char*,char*) ;

__attribute__((used)) static int ksz9021_config_init(struct phy_device *phydev)
{
 const struct device *dev = &phydev->mdio.dev;
 const struct device_node *of_node = dev->of_node;
 const struct device *dev_walker;





 dev_walker = &phydev->mdio.dev;
 do {
  of_node = dev_walker->of_node;
  dev_walker = dev_walker->parent;

 } while (!of_node && dev_walker);

 if (of_node) {
  ksz9021_load_values_from_of(phydev, of_node,
        MII_KSZPHY_CLK_CONTROL_PAD_SKEW,
        "txen-skew-ps", "txc-skew-ps",
        "rxdv-skew-ps", "rxc-skew-ps");
  ksz9021_load_values_from_of(phydev, of_node,
        MII_KSZPHY_RX_DATA_PAD_SKEW,
        "rxd0-skew-ps", "rxd1-skew-ps",
        "rxd2-skew-ps", "rxd3-skew-ps");
  ksz9021_load_values_from_of(phydev, of_node,
        MII_KSZPHY_TX_DATA_PAD_SKEW,
        "txd0-skew-ps", "txd1-skew-ps",
        "txd2-skew-ps", "txd3-skew-ps");
 }
 return 0;
}
