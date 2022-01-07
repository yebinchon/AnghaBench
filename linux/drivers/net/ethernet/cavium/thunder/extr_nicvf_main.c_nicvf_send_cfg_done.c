
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msg; } ;
union nic_mbx {TYPE_1__ msg; } ;
struct nicvf {int netdev; } ;


 int NIC_MBOX_MSG_CFG_DONE ;
 int netdev_err (int ,char*) ;
 scalar_t__ nicvf_send_msg_to_pf (struct nicvf*,union nic_mbx*) ;

__attribute__((used)) static void nicvf_send_cfg_done(struct nicvf *nic)
{
 union nic_mbx mbx = {};

 mbx.msg.msg = NIC_MBOX_MSG_CFG_DONE;
 if (nicvf_send_msg_to_pf(nic, &mbx)) {
  netdev_err(nic->netdev,
      "PF didn't respond to CFG DONE msg\n");
 }
}
