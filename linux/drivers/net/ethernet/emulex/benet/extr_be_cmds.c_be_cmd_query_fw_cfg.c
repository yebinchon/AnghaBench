
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct be_mcc_wrb {int dummy; } ;
struct be_cmd_resp_query_fw_cfg {int asic_revision; int function_caps; int function_mode; int phys_port; } ;
struct be_cmd_req_query_fw_cfg {int hdr; } ;
struct be_adapter {int port_num; int function_mode; int function_caps; int asic_rev; int mbox_lock; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int CMD_SUBSYSTEM_COMMON ;
 int OPCODE_COMMON_QUERY_FIRMWARE_CONFIG ;
 int be_mbox_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (int *,int ,int ,int,struct be_mcc_wrb*,int *) ;
 int dev_info (int *,char*,int,int) ;
 void* embedded_payload (struct be_mcc_wrb*) ;
 int le32_to_cpu (int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mbox (struct be_adapter*) ;

int be_cmd_query_fw_cfg(struct be_adapter *adapter)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_query_fw_cfg *req;
 int status;

 if (mutex_lock_interruptible(&adapter->mbox_lock))
  return -1;

 wrb = wrb_from_mbox(adapter);
 req = embedded_payload(wrb);

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
          OPCODE_COMMON_QUERY_FIRMWARE_CONFIG,
          sizeof(*req), wrb, ((void*)0));

 status = be_mbox_notify_wait(adapter);
 if (!status) {
  struct be_cmd_resp_query_fw_cfg *resp = embedded_payload(wrb);

  adapter->port_num = le32_to_cpu(resp->phys_port);
  adapter->function_mode = le32_to_cpu(resp->function_mode);
  adapter->function_caps = le32_to_cpu(resp->function_caps);
  adapter->asic_rev = le32_to_cpu(resp->asic_revision) & 0xFF;
  dev_info(&adapter->pdev->dev,
    "FW config: function_mode=0x%x, function_caps=0x%x\n",
    adapter->function_mode, adapter->function_caps);
 }

 mutex_unlock(&adapter->mbox_lock);
 return status;
}
