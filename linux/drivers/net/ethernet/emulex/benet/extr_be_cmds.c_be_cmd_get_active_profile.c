
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_resp_get_active_profile {int active_profile_id; } ;
struct be_cmd_req_get_active_profile {int hdr; } ;
struct be_adapter {int mbox_lock; } ;


 int CMD_SUBSYSTEM_COMMON ;
 int EBUSY ;
 int OPCODE_COMMON_GET_ACTIVE_PROFILE ;
 int be_mbox_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (int *,int ,int ,int,struct be_mcc_wrb*,int *) ;
 void* embedded_payload (struct be_mcc_wrb*) ;
 int le16_to_cpu (int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mbox (struct be_adapter*) ;

int be_cmd_get_active_profile(struct be_adapter *adapter, u16 *profile_id)
{
 struct be_cmd_req_get_active_profile *req;
 struct be_mcc_wrb *wrb;
 int status;

 if (mutex_lock_interruptible(&adapter->mbox_lock))
  return -1;

 wrb = wrb_from_mbox(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }

 req = embedded_payload(wrb);

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
          OPCODE_COMMON_GET_ACTIVE_PROFILE, sizeof(*req),
          wrb, ((void*)0));

 status = be_mbox_notify_wait(adapter);
 if (!status) {
  struct be_cmd_resp_get_active_profile *resp =
       embedded_payload(wrb);

  *profile_id = le16_to_cpu(resp->active_profile_id);
 }

err:
 mutex_unlock(&adapter->mbox_lock);
 return status;
}
