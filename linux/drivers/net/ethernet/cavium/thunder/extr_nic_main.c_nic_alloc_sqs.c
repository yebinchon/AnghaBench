
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t vf_id; int qs_count; int msg; } ;
union nic_mbx {TYPE_1__ sqs_alloc; } ;
struct sqs_alloc {int qs_count; size_t vf_id; } ;
struct nicpf {int** vf_sqs; size_t* pqs_vf; int num_sqs_en; } ;


 int NIC_MBOX_MSG_ALLOC_SQS ;
 int nic_nxt_avail_sqs (struct nicpf*) ;
 int nic_send_msg_to_vf (struct nicpf*,size_t,union nic_mbx*) ;

__attribute__((used)) static void nic_alloc_sqs(struct nicpf *nic, struct sqs_alloc *sqs)
{
 union nic_mbx mbx = {};
 int idx, alloc_qs = 0;
 int sqs_id;

 if (!nic->num_sqs_en)
  goto send_mbox;

 for (idx = 0; idx < sqs->qs_count; idx++) {
  sqs_id = nic_nxt_avail_sqs(nic);
  if (sqs_id < 0)
   break;
  nic->vf_sqs[sqs->vf_id][idx] = sqs_id;
  nic->pqs_vf[sqs_id] = sqs->vf_id;
  alloc_qs++;
 }

send_mbox:
 mbx.sqs_alloc.msg = NIC_MBOX_MSG_ALLOC_SQS;
 mbx.sqs_alloc.vf_id = sqs->vf_id;
 mbx.sqs_alloc.qs_count = alloc_qs;
 nic_send_msg_to_vf(nic, sqs->vf_id, &mbx);
}
