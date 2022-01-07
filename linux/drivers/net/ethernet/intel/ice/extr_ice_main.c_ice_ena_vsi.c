
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_vsi {scalar_t__ type; scalar_t__ netdev; int state; } ;


 scalar_t__ ICE_VSI_PF ;
 int __ICE_NEEDS_RESTART ;
 int clear_bit (int ,int ) ;
 int ice_open (scalar_t__) ;
 scalar_t__ netif_running (scalar_t__) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int test_bit (int ,int ) ;

__attribute__((used)) static int ice_ena_vsi(struct ice_vsi *vsi, bool locked)
{
 int err = 0;

 if (!test_bit(__ICE_NEEDS_RESTART, vsi->state))
  return 0;

 clear_bit(__ICE_NEEDS_RESTART, vsi->state);

 if (vsi->netdev && vsi->type == ICE_VSI_PF) {
  if (netif_running(vsi->netdev)) {
   if (!locked)
    rtnl_lock();

   err = ice_open(vsi->netdev);

   if (!locked)
    rtnl_unlock();
  }
 }

 return err;
}
