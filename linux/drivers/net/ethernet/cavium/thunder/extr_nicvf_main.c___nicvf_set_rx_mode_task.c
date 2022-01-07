
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; void* msg; scalar_t__ mac; } ;
union nic_mbx {TYPE_1__ xcast; } ;
typedef int u8 ;
struct xcast_addr_list {int count; scalar_t__* mc; } ;
struct nicvf {int dummy; } ;


 int BGX_XCAST_MCAST_FILTER ;
 void* NIC_MBOX_MSG_ADD_MCAST ;
 void* NIC_MBOX_MSG_RESET_XCAST ;
 void* NIC_MBOX_MSG_SET_XCAST ;
 int kfree (struct xcast_addr_list*) ;
 scalar_t__ nicvf_send_msg_to_pf (struct nicvf*,union nic_mbx*) ;

__attribute__((used)) static void __nicvf_set_rx_mode_task(u8 mode, struct xcast_addr_list *mc_addrs,
         struct nicvf *nic)
{
 union nic_mbx mbx = {};
 int idx;
 mbx.xcast.msg = NIC_MBOX_MSG_RESET_XCAST;
 if (nicvf_send_msg_to_pf(nic, &mbx) < 0)
  goto free_mc;

 if (mode & BGX_XCAST_MCAST_FILTER) {



  mbx.xcast.msg = NIC_MBOX_MSG_ADD_MCAST;
  mbx.xcast.mac = 0;
  if (nicvf_send_msg_to_pf(nic, &mbx) < 0)
   goto free_mc;
 }


 if (mc_addrs) {

  for (idx = 0; idx < mc_addrs->count; idx++) {
   mbx.xcast.msg = NIC_MBOX_MSG_ADD_MCAST;
   mbx.xcast.mac = mc_addrs->mc[idx];
   if (nicvf_send_msg_to_pf(nic, &mbx) < 0)
    goto free_mc;
  }
 }


 mbx.xcast.msg = NIC_MBOX_MSG_SET_XCAST;
 mbx.xcast.mode = mode;

 nicvf_send_msg_to_pf(nic, &mbx);
free_mc:
 kfree(mc_addrs);
}
