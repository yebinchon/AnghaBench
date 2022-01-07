
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ debug_mask; } ;
struct ice_pf {int msg_enable; TYPE_2__ hw; } ;
struct ice_netdev_priv {TYPE_1__* vsi; } ;
struct TYPE_3__ {struct ice_pf* back; } ;


 int netdev_info (struct net_device*,char*,scalar_t__) ;
 struct ice_netdev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 ice_get_msglevel(struct net_device *netdev)
{
 struct ice_netdev_priv *np = netdev_priv(netdev);
 struct ice_pf *pf = np->vsi->back;


 if (pf->hw.debug_mask)
  netdev_info(netdev, "hw debug_mask: 0x%llX\n",
       pf->hw.debug_mask);


 return pf->msg_enable;
}
