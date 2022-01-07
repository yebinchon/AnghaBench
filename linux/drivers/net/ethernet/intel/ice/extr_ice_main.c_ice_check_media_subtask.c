
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ice_vsi {struct ice_port_info* port_info; int state; } ;
struct TYPE_3__ {int link_info; } ;
struct TYPE_4__ {TYPE_1__ link_info; } ;
struct ice_port_info {TYPE_2__ phy; } ;
struct ice_pf {int flags; } ;


 int ICE_AQ_MEDIA_AVAILABLE ;
 int ICE_FLAG_NO_MEDIA ;
 int __ICE_DOWN ;
 int clear_bit (int ,int ) ;
 int ice_force_phys_link_state (struct ice_vsi*,int) ;
 struct ice_vsi* ice_get_main_vsi (struct ice_pf*) ;
 int ice_update_link_info (struct ice_port_info*) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static void ice_check_media_subtask(struct ice_pf *pf)
{
 struct ice_port_info *pi;
 struct ice_vsi *vsi;
 int err;

 vsi = ice_get_main_vsi(pf);
 if (!vsi)
  return;




 if (!test_bit(ICE_FLAG_NO_MEDIA, pf->flags) ||
     test_bit(__ICE_DOWN, vsi->state))
  return;


 pi = vsi->port_info;
 err = ice_update_link_info(pi);
 if (err)
  return;

 if (pi->phy.link_info.link_info & ICE_AQ_MEDIA_AVAILABLE) {
  err = ice_force_phys_link_state(vsi, 1);
  if (err)
   return;
  clear_bit(ICE_FLAG_NO_MEDIA, pf->flags);




 }
}
