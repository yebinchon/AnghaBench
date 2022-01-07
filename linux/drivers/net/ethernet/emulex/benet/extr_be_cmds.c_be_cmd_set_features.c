
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct be_req_ue_recovery {int dummy; } ;
struct be_mcc_wrb {int dummy; } ;
struct TYPE_9__ {int ue2sr; int ue2rp; } ;
struct TYPE_10__ {TYPE_3__ resp; } ;
struct be_cmd_resp_set_features {TYPE_4__ parameter; } ;
struct TYPE_7__ {void* uer; } ;
struct TYPE_8__ {TYPE_1__ req; } ;
struct be_cmd_req_set_features {TYPE_2__ parameter; void* parameter_len; void* features; int hdr; } ;
struct TYPE_11__ {int recovery_supported; void* ue_to_reset_time; void* ue_to_poll_time; } ;
struct be_adapter {int mcc_lock; TYPE_6__* pdev; TYPE_5__ error_recovery; } ;
struct TYPE_12__ {int dev; } ;


 int BE_FEATURE_UE_RECOVERY ;
 int BE_UE_RECOVERY_UER_MASK ;
 int CMD_SUBSYSTEM_COMMON ;
 int EBUSY ;
 scalar_t__ MCC_STATUS_ILLEGAL_REQUEST ;
 scalar_t__ MCC_STATUS_INVALID_LENGTH ;
 int OPCODE_COMMON_SET_FEATURES ;
 scalar_t__ base_status (int) ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (int *,int ,int ,int,struct be_mcc_wrb*,int *) ;
 void* cpu_to_le32 (int) ;
 int dev_info (int *,char*) ;
 void* embedded_payload (struct be_mcc_wrb*) ;
 void* le16_to_cpu (int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

int be_cmd_set_features(struct be_adapter *adapter)
{
 struct be_cmd_resp_set_features *resp;
 struct be_cmd_req_set_features *req;
 struct be_mcc_wrb *wrb;
 int status;

 if (mutex_lock_interruptible(&adapter->mcc_lock))
  return -1;

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }

 req = embedded_payload(wrb);

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
          OPCODE_COMMON_SET_FEATURES,
          sizeof(*req), wrb, ((void*)0));

 req->features = cpu_to_le32(BE_FEATURE_UE_RECOVERY);
 req->parameter_len = cpu_to_le32(sizeof(struct be_req_ue_recovery));
 req->parameter.req.uer = cpu_to_le32(BE_UE_RECOVERY_UER_MASK);

 status = be_mcc_notify_wait(adapter);
 if (status)
  goto err;

 resp = embedded_payload(wrb);

 adapter->error_recovery.ue_to_poll_time =
  le16_to_cpu(resp->parameter.resp.ue2rp);
 adapter->error_recovery.ue_to_reset_time =
  le16_to_cpu(resp->parameter.resp.ue2sr);
 adapter->error_recovery.recovery_supported = 1;
err:



 if (base_status(status) == MCC_STATUS_ILLEGAL_REQUEST ||
     base_status(status) == MCC_STATUS_INVALID_LENGTH)
  dev_info(&adapter->pdev->dev,
    "Adapter does not support HW error recovery\n");

 mutex_unlock(&adapter->mcc_lock);
 return status;
}
