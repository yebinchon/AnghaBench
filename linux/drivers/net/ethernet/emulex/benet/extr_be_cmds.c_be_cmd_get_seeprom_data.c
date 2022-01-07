
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {struct be_cmd_req_seeprom_read* va; } ;
struct be_cmd_req_seeprom_read {int hdr; } ;
struct be_adapter {int mcc_lock; } ;


 int CMD_SUBSYSTEM_COMMON ;
 int EBUSY ;
 int OPCODE_COMMON_SEEPROM_READ ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (int *,int ,int ,int,struct be_mcc_wrb*,struct be_dma_mem*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

int be_cmd_get_seeprom_data(struct be_adapter *adapter,
       struct be_dma_mem *nonemb_cmd)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_seeprom_read *req;
 int status;

 mutex_lock(&adapter->mcc_lock);

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }
 req = nonemb_cmd->va;

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
          OPCODE_COMMON_SEEPROM_READ, sizeof(*req), wrb,
          nonemb_cmd);

 status = be_mcc_notify_wait(adapter);

err:
 mutex_unlock(&adapter->mcc_lock);
 return status;
}
