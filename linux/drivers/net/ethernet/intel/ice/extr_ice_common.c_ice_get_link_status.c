
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int link_info; } ;
struct ice_phy_info {TYPE_1__ link_info; scalar_t__ get_link_info; } ;
struct ice_port_info {int hw; struct ice_phy_info phy; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ICE_AQ_LINK_UP ;
 int ICE_DBG_LINK ;
 int ICE_ERR_PARAM ;
 int ice_debug (int ,int ,char*,int) ;
 int ice_update_link_info (struct ice_port_info*) ;

enum ice_status ice_get_link_status(struct ice_port_info *pi, bool *link_up)
{
 struct ice_phy_info *phy_info;
 enum ice_status status = 0;

 if (!pi || !link_up)
  return ICE_ERR_PARAM;

 phy_info = &pi->phy;

 if (phy_info->get_link_info) {
  status = ice_update_link_info(pi);

  if (status)
   ice_debug(pi->hw, ICE_DBG_LINK,
      "get link status error, status = %d\n",
      status);
 }

 *link_up = phy_info->link_info.link_info & ICE_AQ_LINK_UP;

 return status;
}
