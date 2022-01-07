
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_mcc_wrb {int dummy; } ;
struct be_cmd_resp_get_fw_version {int fw_on_flash_version_string; int firmware_version_string; } ;
struct be_cmd_req_get_fw_version {int hdr; } ;
struct be_adapter {int mcc_lock; int fw_on_flash; int fw_ver; } ;


 int CMD_SUBSYSTEM_COMMON ;
 int EBUSY ;
 int OPCODE_COMMON_GET_FW_VERSION ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (int *,int ,int ,int,struct be_mcc_wrb*,int *) ;
 void* embedded_payload (struct be_mcc_wrb*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strlcpy (int ,int ,int) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

int be_cmd_get_fw_ver(struct be_adapter *adapter)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_get_fw_version *req;
 int status;

 mutex_lock(&adapter->mcc_lock);

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }

 req = embedded_payload(wrb);

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
          OPCODE_COMMON_GET_FW_VERSION, sizeof(*req), wrb,
          ((void*)0));
 status = be_mcc_notify_wait(adapter);
 if (!status) {
  struct be_cmd_resp_get_fw_version *resp = embedded_payload(wrb);

  strlcpy(adapter->fw_ver, resp->firmware_version_string,
   sizeof(adapter->fw_ver));
  strlcpy(adapter->fw_on_flash, resp->fw_on_flash_version_string,
   sizeof(adapter->fw_on_flash));
 }
err:
 mutex_unlock(&adapter->mcc_lock);
 return status;
}
