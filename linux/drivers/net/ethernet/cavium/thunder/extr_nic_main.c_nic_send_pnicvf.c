
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nicvf; int msg; } ;
union nic_mbx {TYPE_1__ nicvf; } ;
struct nicpf {size_t* pqs_vf; int * nicvf; } ;


 int NIC_MBOX_MSG_PNICVF_PTR ;
 int nic_send_msg_to_vf (struct nicpf*,int,union nic_mbx*) ;

__attribute__((used)) static void nic_send_pnicvf(struct nicpf *nic, int sqs)
{
 union nic_mbx mbx = {};

 mbx.nicvf.msg = NIC_MBOX_MSG_PNICVF_PTR;
 mbx.nicvf.nicvf = nic->nicvf[nic->pqs_vf[sqs]];
 nic_send_msg_to_vf(nic, sqs, &mbx);
}
