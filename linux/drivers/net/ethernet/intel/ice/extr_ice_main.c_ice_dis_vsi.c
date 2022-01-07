
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_vsi {scalar_t__ type; scalar_t__ netdev; int state; } ;


 scalar_t__ ICE_VSI_PF ;
 int __ICE_DOWN ;
 int __ICE_NEEDS_RESTART ;
 int ice_stop (scalar_t__) ;
 int ice_vsi_close (struct ice_vsi*) ;
 scalar_t__ netif_running (scalar_t__) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int set_bit (int ,int ) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static void ice_dis_vsi(struct ice_vsi *vsi, bool locked)
{
 if (test_bit(__ICE_DOWN, vsi->state))
  return;

 set_bit(__ICE_NEEDS_RESTART, vsi->state);

 if (vsi->type == ICE_VSI_PF && vsi->netdev) {
  if (netif_running(vsi->netdev)) {
   if (!locked)
    rtnl_lock();

   ice_stop(vsi->netdev);

   if (!locked)
    rtnl_unlock();
  } else {
   ice_vsi_close(vsi);
  }
 }
}
