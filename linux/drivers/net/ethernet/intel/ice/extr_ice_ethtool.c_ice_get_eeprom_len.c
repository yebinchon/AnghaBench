
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int sr_words; } ;
struct TYPE_6__ {TYPE_2__ nvm; } ;
struct ice_pf {TYPE_3__ hw; } ;
struct ice_netdev_priv {TYPE_1__* vsi; } ;
struct TYPE_4__ {struct ice_pf* back; } ;


 struct ice_netdev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ice_get_eeprom_len(struct net_device *netdev)
{
 struct ice_netdev_priv *np = netdev_priv(netdev);
 struct ice_pf *pf = np->vsi->back;

 return (int)(pf->hw.nvm.sr_words * sizeof(u16));
}
