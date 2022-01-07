
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct be_set_eqd {int eq_id; int delay_multiplier; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_req_modify_eq_delay {TYPE_1__* set_eqd; void* num_eq; int hdr; } ;
struct be_adapter {int mcc_lock; } ;
struct TYPE_2__ {void* delay_multiplier; scalar_t__ phase; void* eq_id; } ;


 int CMD_SUBSYSTEM_COMMON ;
 int EBUSY ;
 int OPCODE_COMMON_MODIFY_EQ_DELAY ;
 int be_mcc_notify (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (int *,int ,int ,int,struct be_mcc_wrb*,int *) ;
 void* cpu_to_le32 (int) ;
 struct be_cmd_req_modify_eq_delay* embedded_payload (struct be_mcc_wrb*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

__attribute__((used)) static int __be_cmd_modify_eqd(struct be_adapter *adapter,
          struct be_set_eqd *set_eqd, int num)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_modify_eq_delay *req;
 int status = 0, i;

 mutex_lock(&adapter->mcc_lock);

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }
 req = embedded_payload(wrb);

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
          OPCODE_COMMON_MODIFY_EQ_DELAY, sizeof(*req), wrb,
          ((void*)0));

 req->num_eq = cpu_to_le32(num);
 for (i = 0; i < num; i++) {
  req->set_eqd[i].eq_id = cpu_to_le32(set_eqd[i].eq_id);
  req->set_eqd[i].phase = 0;
  req->set_eqd[i].delay_multiplier =
    cpu_to_le32(set_eqd[i].delay_multiplier);
 }

 status = be_mcc_notify(adapter);
err:
 mutex_unlock(&adapter->mcc_lock);
 return status;
}
