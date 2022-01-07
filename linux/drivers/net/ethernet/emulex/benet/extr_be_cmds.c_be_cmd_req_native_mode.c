
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct be_mcc_wrb {int dummy; } ;
struct be_cmd_resp_set_func_cap {int cap_flags; } ;
struct be_cmd_req_set_func_cap {void* cap_flags; void* valid_cap_flags; int hdr; } ;
struct be_adapter {int be3_native; int mbox_lock; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int CAPABILITY_BE3_NATIVE_ERX_API ;
 int CAPABILITY_SW_TIMESTAMPS ;
 int CMD_SUBSYSTEM_COMMON ;
 int EBUSY ;
 int OPCODE_COMMON_SET_DRIVER_FUNCTION_CAP ;
 int be_mbox_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (int *,int ,int ,int,struct be_mcc_wrb*,int *) ;
 void* cpu_to_le32 (int) ;
 int dev_warn (int *,char*) ;
 void* embedded_payload (struct be_mcc_wrb*) ;
 int le32_to_cpu (int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mbox (struct be_adapter*) ;

int be_cmd_req_native_mode(struct be_adapter *adapter)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_set_func_cap *req;
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
          OPCODE_COMMON_SET_DRIVER_FUNCTION_CAP,
          sizeof(*req), wrb, ((void*)0));

 req->valid_cap_flags = cpu_to_le32(CAPABILITY_SW_TIMESTAMPS |
    CAPABILITY_BE3_NATIVE_ERX_API);
 req->cap_flags = cpu_to_le32(CAPABILITY_BE3_NATIVE_ERX_API);

 status = be_mbox_notify_wait(adapter);
 if (!status) {
  struct be_cmd_resp_set_func_cap *resp = embedded_payload(wrb);

  adapter->be3_native = le32_to_cpu(resp->cap_flags) &
     CAPABILITY_BE3_NATIVE_ERX_API;
  if (!adapter->be3_native)
   dev_warn(&adapter->pdev->dev,
     "adapter not in advanced mode\n");
 }
err:
 mutex_unlock(&adapter->mbox_lock);
 return status;
}
