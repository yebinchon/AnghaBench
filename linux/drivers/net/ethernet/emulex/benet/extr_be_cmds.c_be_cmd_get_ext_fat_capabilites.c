
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {int size; struct be_cmd_req_get_ext_fat_caps* va; } ;
struct be_cmd_req_get_ext_fat_caps {int parameter_type; int hdr; } ;
struct be_adapter {int mbox_lock; } ;


 int CMD_SUBSYSTEM_COMMON ;
 int EBUSY ;
 int EPERM ;
 int OPCODE_COMMON_GET_EXT_FAT_CAPABILITIES ;
 int be_cmd_allowed (struct be_adapter*,int ,int ) ;
 int be_mbox_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (int *,int ,int ,int ,struct be_mcc_wrb*,struct be_dma_mem*) ;
 int cpu_to_le32 (int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mbox (struct be_adapter*) ;

int be_cmd_get_ext_fat_capabilites(struct be_adapter *adapter,
       struct be_dma_mem *cmd)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_get_ext_fat_caps *req;
 int status;

 if (!be_cmd_allowed(adapter, OPCODE_COMMON_GET_EXT_FAT_CAPABILITIES,
       CMD_SUBSYSTEM_COMMON))
  return -EPERM;

 if (mutex_lock_interruptible(&adapter->mbox_lock))
  return -1;

 wrb = wrb_from_mbox(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }

 req = cmd->va;
 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
          OPCODE_COMMON_GET_EXT_FAT_CAPABILITIES,
          cmd->size, wrb, cmd);
 req->parameter_type = cpu_to_le32(1);

 status = be_mbox_notify_wait(adapter);
err:
 mutex_unlock(&adapter->mbox_lock);
 return status;
}
