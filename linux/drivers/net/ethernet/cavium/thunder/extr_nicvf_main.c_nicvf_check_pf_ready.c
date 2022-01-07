
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msg; } ;
union nic_mbx {TYPE_1__ msg; } ;
struct nicvf {int netdev; } ;


 int NIC_MBOX_MSG_READY ;
 int netdev_err (int ,char*) ;
 scalar_t__ nicvf_send_msg_to_pf (struct nicvf*,union nic_mbx*) ;

__attribute__((used)) static int nicvf_check_pf_ready(struct nicvf *nic)
{
 union nic_mbx mbx = {};

 mbx.msg.msg = NIC_MBOX_MSG_READY;
 if (nicvf_send_msg_to_pf(nic, &mbx)) {
  netdev_err(nic->netdev,
      "PF didn't respond to READY msg\n");
  return 0;
 }

 return 1;
}
