
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_req_set_lmode {void* loopback_state; void* loopback_type; void* dest_port; void* src_port; int hdr; } ;
struct be_adapter {int mcc_lock; int et_cmd_compl; } ;


 int CMD_SUBSYSTEM_LOWLEVEL ;
 int EBUSY ;
 int EPERM ;
 int ETIMEDOUT ;
 int OPCODE_LOWLEVEL_SET_LOOPBACK_MODE ;
 int SET_LB_MODE_TIMEOUT ;
 int be_cmd_allowed (struct be_adapter*,int ,int ) ;
 int be_mcc_notify (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (int *,int ,int ,int,struct be_mcc_wrb*,int *) ;
 struct be_cmd_req_set_lmode* embedded_payload (struct be_mcc_wrb*) ;
 int msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_for_completion_timeout (int *,int ) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

int be_cmd_set_loopback(struct be_adapter *adapter, u8 port_num,
   u8 loopback_type, u8 enable)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_set_lmode *req;
 int status;

 if (!be_cmd_allowed(adapter, OPCODE_LOWLEVEL_SET_LOOPBACK_MODE,
       CMD_SUBSYSTEM_LOWLEVEL))
  return -EPERM;

 mutex_lock(&adapter->mcc_lock);

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err_unlock;
 }

 req = embedded_payload(wrb);

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_LOWLEVEL,
          OPCODE_LOWLEVEL_SET_LOOPBACK_MODE, sizeof(*req),
          wrb, ((void*)0));

 req->src_port = port_num;
 req->dest_port = port_num;
 req->loopback_type = loopback_type;
 req->loopback_state = enable;

 status = be_mcc_notify(adapter);
 if (status)
  goto err_unlock;

 mutex_unlock(&adapter->mcc_lock);

 if (!wait_for_completion_timeout(&adapter->et_cmd_compl,
      msecs_to_jiffies(SET_LB_MODE_TIMEOUT)))
  status = -ETIMEDOUT;

 return status;

err_unlock:
 mutex_unlock(&adapter->mcc_lock);
 return status;
}
