
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_queue_info {int created; int id; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_req_q_destroy {int id; int hdr; } ;
struct be_adapter {int mcc_lock; } ;


 int CMD_SUBSYSTEM_ETH ;
 int EBUSY ;
 int OPCODE_ETH_RX_DESTROY ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (int *,int ,int ,int,struct be_mcc_wrb*,int *) ;
 int cpu_to_le16 (int ) ;
 struct be_cmd_req_q_destroy* embedded_payload (struct be_mcc_wrb*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

int be_cmd_rxq_destroy(struct be_adapter *adapter, struct be_queue_info *q)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_q_destroy *req;
 int status;

 mutex_lock(&adapter->mcc_lock);

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }
 req = embedded_payload(wrb);

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_ETH,
          OPCODE_ETH_RX_DESTROY, sizeof(*req), wrb, ((void*)0));
 req->id = cpu_to_le16(q->id);

 status = be_mcc_notify_wait(adapter);
 q->created = 0;

err:
 mutex_unlock(&adapter->mcc_lock);
 return status;
}
