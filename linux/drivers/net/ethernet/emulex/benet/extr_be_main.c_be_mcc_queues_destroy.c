
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct be_queue_info {scalar_t__ created; } ;
struct TYPE_2__ {struct be_queue_info cq; struct be_queue_info q; } ;
struct be_adapter {TYPE_1__ mcc_obj; } ;


 int QTYPE_CQ ;
 int QTYPE_MCCQ ;
 int be_cmd_q_destroy (struct be_adapter*,struct be_queue_info*,int ) ;
 int be_queue_free (struct be_adapter*,struct be_queue_info*) ;

__attribute__((used)) static void be_mcc_queues_destroy(struct be_adapter *adapter)
{
 struct be_queue_info *q;

 q = &adapter->mcc_obj.q;
 if (q->created)
  be_cmd_q_destroy(adapter, q, QTYPE_MCCQ);
 be_queue_free(adapter, q);

 q = &adapter->mcc_obj.cq;
 if (q->created)
  be_cmd_q_destroy(adapter, q, QTYPE_CQ);
 be_queue_free(adapter, q);
}
