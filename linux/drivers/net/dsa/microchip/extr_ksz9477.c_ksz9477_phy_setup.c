
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct ksz_device {int phy_port_cnt; int features; } ;


 int ETHTOOL_LINK_MODE_1000baseT_Full_BIT ;
 int ETHTOOL_LINK_MODE_1000baseT_Half_BIT ;
 int GBIT_SUPPORT ;
 int phy_remove_link_mode (struct phy_device*,int ) ;

__attribute__((used)) static void ksz9477_phy_setup(struct ksz_device *dev, int port,
         struct phy_device *phy)
{

 if (port >= dev->phy_port_cnt)
  return;


 phy_remove_link_mode(phy,
        ETHTOOL_LINK_MODE_1000baseT_Half_BIT);


 if (!(dev->features & GBIT_SUPPORT))
  phy_remove_link_mode(phy,
         ETHTOOL_LINK_MODE_1000baseT_Full_BIT);
}
