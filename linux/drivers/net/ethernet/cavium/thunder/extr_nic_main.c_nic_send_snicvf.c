
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t sqs_id; int nicvf; int msg; } ;
union nic_mbx {TYPE_1__ nicvf; } ;
struct nicvf_ptr {size_t vf_id; size_t sqs_id; } ;
struct nicpf {int** vf_sqs; int * nicvf; } ;


 int NIC_MBOX_MSG_SNICVF_PTR ;
 int nic_send_msg_to_vf (struct nicpf*,size_t,union nic_mbx*) ;

__attribute__((used)) static void nic_send_snicvf(struct nicpf *nic, struct nicvf_ptr *nicvf)
{
 union nic_mbx mbx = {};
 int sqs_id = nic->vf_sqs[nicvf->vf_id][nicvf->sqs_id];

 mbx.nicvf.msg = NIC_MBOX_MSG_SNICVF_PTR;
 mbx.nicvf.sqs_id = nicvf->sqs_id;
 mbx.nicvf.nicvf = nic->nicvf[sqs_id];
 nic_send_msg_to_vf(nic, nicvf->vf_id, &mbx);
}
