
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pch_gbe_adapter {int netdev; int mii; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int speed; } ;
struct TYPE_3__ {int advertising; int supported; } ;
struct ethtool_link_ksettings {TYPE_2__ base; TYPE_1__ link_modes; } ;


 int ADVERTISED_1000baseT_Half ;
 int ADVERTISED_TP ;
 int SPEED_UNKNOWN ;
 int SUPPORTED_1000baseT_Half ;
 int SUPPORTED_TP ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,int) ;
 int ethtool_convert_link_mode_to_legacy_u32 (int*,int ) ;
 int mii_ethtool_get_link_ksettings (int *,struct ethtool_link_ksettings*) ;
 struct pch_gbe_adapter* netdev_priv (struct net_device*) ;
 int netif_carrier_ok (int ) ;

__attribute__((used)) static int pch_gbe_get_link_ksettings(struct net_device *netdev,
          struct ethtool_link_ksettings *ecmd)
{
 struct pch_gbe_adapter *adapter = netdev_priv(netdev);
 u32 supported, advertising;

 mii_ethtool_get_link_ksettings(&adapter->mii, ecmd);

 ethtool_convert_link_mode_to_legacy_u32(&supported,
      ecmd->link_modes.supported);
 ethtool_convert_link_mode_to_legacy_u32(&advertising,
      ecmd->link_modes.advertising);

 supported &= ~(SUPPORTED_TP | SUPPORTED_1000baseT_Half);
 advertising &= ~(ADVERTISED_TP | ADVERTISED_1000baseT_Half);

 ethtool_convert_legacy_u32_to_link_mode(ecmd->link_modes.supported,
      supported);
 ethtool_convert_legacy_u32_to_link_mode(ecmd->link_modes.advertising,
      advertising);

 if (!netif_carrier_ok(adapter->netdev))
  ecmd->base.speed = SPEED_UNKNOWN;

 return 0;
}
