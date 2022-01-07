
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cfg; int sqs_count; int num; int msg; } ;
union nic_mbx {TYPE_1__ qs; } ;
struct queue_set {int enable; int vnic_id; } ;
struct qs_cfg {int ena; int be; int send_tstmp_ena; int vnic; } ;
struct nicvf {scalar_t__ ptp_clock; int sqs_count; int vf_id; int netdev; struct queue_set* qs; } ;


 int NIC_MBOX_MSG_QS_CFG ;
 int netdev_warn (int ,char*) ;
 int nicvf_send_msg_to_pf (struct nicvf*,union nic_mbx*) ;

void nicvf_qset_config(struct nicvf *nic, bool enable)
{
 union nic_mbx mbx = {};
 struct queue_set *qs = nic->qs;
 struct qs_cfg *qs_cfg;

 if (!qs) {
  netdev_warn(nic->netdev,
       "Qset is still not allocated, don't init queues\n");
  return;
 }

 qs->enable = enable;
 qs->vnic_id = nic->vf_id;


 mbx.qs.msg = NIC_MBOX_MSG_QS_CFG;
 mbx.qs.num = qs->vnic_id;
 mbx.qs.sqs_count = nic->sqs_count;

 mbx.qs.cfg = 0;
 qs_cfg = (struct qs_cfg *)&mbx.qs.cfg;
 if (qs->enable) {
  qs_cfg->ena = 1;



  qs_cfg->vnic = qs->vnic_id;

  if (nic->ptp_clock)
   qs_cfg->send_tstmp_ena = 1;
 }
 nicvf_send_msg_to_pf(nic, &mbx);
}
