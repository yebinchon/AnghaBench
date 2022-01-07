
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct net_device {int dummy; } ;
struct ice_pf {int hw; } ;
struct ice_netdev_priv {TYPE_1__* vsi; } ;
struct TYPE_2__ {struct ice_pf* back; } ;


 int ice_nvm_validate_checksum (int *) ;
 int netdev_info (struct net_device*,char*) ;
 struct ice_netdev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u64 ice_eeprom_test(struct net_device *netdev)
{
 struct ice_netdev_priv *np = netdev_priv(netdev);
 struct ice_pf *pf = np->vsi->back;

 netdev_info(netdev, "EEPROM test\n");
 return !!(ice_nvm_validate_checksum(&pf->hw));
}
