
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msg; } ;
union nic_mbx {TYPE_1__ msg; } ;
struct nicpf {int dummy; } ;


 int NIC_MBOX_MSG_NACK ;
 int nic_send_msg_to_vf (struct nicpf*,int,union nic_mbx*) ;

__attribute__((used)) static void nic_mbx_send_nack(struct nicpf *nic, int vf)
{
 union nic_mbx mbx = {};

 mbx.msg.msg = NIC_MBOX_MSG_NACK;
 nic_send_msg_to_vf(nic, vf, &mbx);
}
