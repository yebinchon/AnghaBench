
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ice_port_info {int lport; int hw; } ;


 int EIO ;
 int ICE_AQ_LINK_EVENT_MEDIA_NA ;
 int ICE_AQ_LINK_EVENT_MODULE_QUAL_FAIL ;
 int ICE_AQ_LINK_EVENT_UPDOWN ;
 int dev_dbg (int ,char*,int ) ;
 scalar_t__ ice_aq_get_link_info (struct ice_port_info*,int,int *,int *) ;
 scalar_t__ ice_aq_set_event_mask (int ,int ,int ,int *) ;
 int ice_hw_to_dev (int ) ;

__attribute__((used)) static int ice_init_link_events(struct ice_port_info *pi)
{
 u16 mask;

 mask = ~((u16)(ICE_AQ_LINK_EVENT_UPDOWN | ICE_AQ_LINK_EVENT_MEDIA_NA |
         ICE_AQ_LINK_EVENT_MODULE_QUAL_FAIL));

 if (ice_aq_set_event_mask(pi->hw, pi->lport, mask, ((void*)0))) {
  dev_dbg(ice_hw_to_dev(pi->hw),
   "Failed to set link event mask for port %d\n",
   pi->lport);
  return -EIO;
 }

 if (ice_aq_get_link_info(pi, 1, ((void*)0), ((void*)0))) {
  dev_dbg(ice_hw_to_dev(pi->hw),
   "Failed to enable link events for port %d\n",
   pi->lport);
  return -EIO;
 }

 return 0;
}
