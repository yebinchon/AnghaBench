
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fjes_hw {int max_epid; int my_epid; TYPE_1__* ep_shm_info; } ;
struct fjes_adapter {struct fjes_hw hw; } ;
typedef enum ep_partner_status { ____Placeholder_ep_partner_status } ep_partner_status ;
struct TYPE_2__ {int rx; } ;


 int EP_PARTNER_SHARED ;
 int fjes_hw_epbuf_rx_is_empty (int *) ;
 int fjes_hw_get_partner_ep_status (struct fjes_hw*,int) ;

__attribute__((used)) static int fjes_rxframe_search_exist(struct fjes_adapter *adapter,
         int start_epid)
{
 struct fjes_hw *hw = &adapter->hw;
 enum ep_partner_status pstatus;
 int max_epid, cur_epid;
 int i;

 max_epid = hw->max_epid;
 start_epid = (start_epid + 1 + max_epid) % max_epid;

 for (i = 0; i < max_epid; i++) {
  cur_epid = (start_epid + i) % max_epid;
  if (cur_epid == hw->my_epid)
   continue;

  pstatus = fjes_hw_get_partner_ep_status(hw, cur_epid);
  if (pstatus == EP_PARTNER_SHARED) {
   if (!fjes_hw_epbuf_rx_is_empty(
    &hw->ep_shm_info[cur_epid].rx))
    return cur_epid;
  }
 }
 return -1;
}
