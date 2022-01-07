
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct ice_vsi {int vsi_num; int port_info; } ;
struct TYPE_3__ {int link_info; scalar_t__ link_speed; } ;
struct ice_phy_info {TYPE_1__ link_info; TYPE_1__ link_info_old; } ;
struct ice_port_info {struct ice_phy_info phy; int lport; } ;
struct ice_pf {scalar_t__ num_alloc_vfs; TYPE_2__* pdev; int flags; } ;
struct TYPE_4__ {int dev; } ;


 int EINVAL ;
 int ICE_AQ_LINK_UP ;
 int ICE_AQ_MEDIA_AVAILABLE ;
 int ICE_FLAG_NO_MEDIA ;
 int dev_dbg (int *,char*,int ,...) ;
 int ice_aq_set_link_restart_an (struct ice_port_info*,int,int *) ;
 struct ice_vsi* ice_get_main_vsi (struct ice_pf*) ;
 int ice_print_link_msg (struct ice_vsi*,int) ;
 int ice_update_link_info (struct ice_port_info*) ;
 int ice_vc_notify_link_state (struct ice_pf*) ;
 int ice_vsi_link_event (struct ice_vsi*,int) ;
 int set_bit (int ,int ) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static int
ice_link_event(struct ice_pf *pf, struct ice_port_info *pi, bool link_up,
        u16 link_speed)
{
 struct ice_phy_info *phy_info;
 struct ice_vsi *vsi;
 u16 old_link_speed;
 bool old_link;
 int result;

 phy_info = &pi->phy;
 phy_info->link_info_old = phy_info->link_info;

 old_link = !!(phy_info->link_info_old.link_info & ICE_AQ_LINK_UP);
 old_link_speed = phy_info->link_info_old.link_speed;




 result = ice_update_link_info(pi);
 if (result)
  dev_dbg(&pf->pdev->dev,
   "Failed to update link status and re-enable link events for port %d\n",
   pi->lport);


 if (link_up == old_link && link_speed == old_link_speed)
  return result;

 vsi = ice_get_main_vsi(pf);
 if (!vsi || !vsi->port_info)
  return -EINVAL;


 if (!test_bit(ICE_FLAG_NO_MEDIA, pf->flags) &&
     !(pi->phy.link_info.link_info & ICE_AQ_MEDIA_AVAILABLE)) {
  set_bit(ICE_FLAG_NO_MEDIA, pf->flags);

  result = ice_aq_set_link_restart_an(pi, 0, ((void*)0));
  if (result) {
   dev_dbg(&pf->pdev->dev,
    "Failed to set link down, VSI %d error %d\n",
    vsi->vsi_num, result);
   return result;
  }
 }

 ice_vsi_link_event(vsi, link_up);
 ice_print_link_msg(vsi, link_up);

 if (pf->num_alloc_vfs)
  ice_vc_notify_link_state(pf);

 return result;
}
