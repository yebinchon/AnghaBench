
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ice_vsi {TYPE_1__* back; int flags; } ;
struct ice_netdev_priv {struct ice_vsi* vsi; } ;
struct TYPE_2__ {int flags; } ;


 int ICE_FLAG_FLTR_SYNC ;
 int ICE_VSI_FLAG_MMAC_FLTR_CHANGED ;
 int ICE_VSI_FLAG_UMAC_FLTR_CHANGED ;
 int ice_service_task_schedule (TYPE_1__*) ;
 struct ice_netdev_priv* netdev_priv (struct net_device*) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static void ice_set_rx_mode(struct net_device *netdev)
{
 struct ice_netdev_priv *np = netdev_priv(netdev);
 struct ice_vsi *vsi = np->vsi;

 if (!vsi)
  return;





 set_bit(ICE_VSI_FLAG_UMAC_FLTR_CHANGED, vsi->flags);
 set_bit(ICE_VSI_FLAG_MMAC_FLTR_CHANGED, vsi->flags);
 set_bit(ICE_FLAG_FLTR_SYNC, vsi->back->flags);




 ice_service_task_schedule(vsi->back);
}
