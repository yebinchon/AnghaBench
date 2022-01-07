
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int share; } ;
struct fjes_hw {TYPE_1__ hw_info; } ;
typedef enum ep_partner_status { ____Placeholder_ep_partner_status } ep_partner_status ;


 int EP_PARTNER_COMPLETE ;
 int EP_PARTNER_SHARED ;
 int EP_PARTNER_UNSHARE ;
 int EP_PARTNER_WAITING ;
 scalar_t__ fjes_hw_epid_is_shared (int ,int) ;
 scalar_t__ fjes_hw_epid_is_stop_process_done (struct fjes_hw*,int) ;
 scalar_t__ fjes_hw_epid_is_stop_requested (struct fjes_hw*,int) ;

enum ep_partner_status
fjes_hw_get_partner_ep_status(struct fjes_hw *hw, int epid)
{
 enum ep_partner_status status;

 if (fjes_hw_epid_is_shared(hw->hw_info.share, epid)) {
  if (fjes_hw_epid_is_stop_requested(hw, epid)) {
   status = EP_PARTNER_WAITING;
  } else {
   if (fjes_hw_epid_is_stop_process_done(hw, epid))
    status = EP_PARTNER_COMPLETE;
   else
    status = EP_PARTNER_SHARED;
  }
 } else {
  status = EP_PARTNER_UNSHARE;
 }

 return status;
}
