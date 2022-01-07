
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ethtool_link_ksettings {int dummy; } ;
struct ef4_nic {int mdio; } ;


 int mdio45_ethtool_ksettings_get (int *,struct ethtool_link_ksettings*) ;

__attribute__((used)) static void qt202x_phy_get_link_ksettings(struct ef4_nic *efx,
       struct ethtool_link_ksettings *cmd)
{
 mdio45_ethtool_ksettings_get(&efx->mdio, cmd);
}
