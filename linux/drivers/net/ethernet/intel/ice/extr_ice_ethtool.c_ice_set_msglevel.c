
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int debug_mask; } ;
struct ice_pf {int msg_enable; TYPE_2__ hw; } ;
struct ice_netdev_priv {TYPE_1__* vsi; } ;
struct TYPE_3__ {struct ice_pf* back; } ;


 int ICE_DBG_USER ;
 struct ice_netdev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ice_set_msglevel(struct net_device *netdev, u32 data)
{
 struct ice_netdev_priv *np = netdev_priv(netdev);
 struct ice_pf *pf = np->vsi->back;


 if (ICE_DBG_USER & data)
  pf->hw.debug_mask = data;
 else
  pf->msg_enable = data;



}
