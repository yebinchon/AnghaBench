
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int u32 ;
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {struct be_cmd_resp_ddrdma_test* va; int size; } ;
struct be_cmd_resp_ddrdma_test {scalar_t__ snd_err; scalar_t__* snd_buff; int rcv_buff; int byte_count; int pattern; int hdr; } ;
struct be_cmd_req_ddrdma_test {scalar_t__ snd_err; scalar_t__* snd_buff; int rcv_buff; int byte_count; int pattern; int hdr; } ;
struct be_adapter {int mcc_lock; } ;


 int CMD_SUBSYSTEM_LOWLEVEL ;
 int EBUSY ;
 int EPERM ;
 int OPCODE_LOWLEVEL_HOST_DDR_DMA ;
 int be_cmd_allowed (struct be_adapter*,int ,int ) ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (int *,int ,int ,int ,struct be_mcc_wrb*,struct be_dma_mem*) ;
 int cpu_to_le32 (int) ;
 int cpu_to_le64 (int) ;
 scalar_t__ memcmp (int ,scalar_t__*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

int be_cmd_ddr_dma_test(struct be_adapter *adapter, u64 pattern,
   u32 byte_cnt, struct be_dma_mem *cmd)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_ddrdma_test *req;
 int status;
 int i, j = 0;

 if (!be_cmd_allowed(adapter, OPCODE_LOWLEVEL_HOST_DDR_DMA,
       CMD_SUBSYSTEM_LOWLEVEL))
  return -EPERM;

 mutex_lock(&adapter->mcc_lock);

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }
 req = cmd->va;
 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_LOWLEVEL,
          OPCODE_LOWLEVEL_HOST_DDR_DMA, cmd->size, wrb,
          cmd);

 req->pattern = cpu_to_le64(pattern);
 req->byte_count = cpu_to_le32(byte_cnt);
 for (i = 0; i < byte_cnt; i++) {
  req->snd_buff[i] = (u8)(pattern >> (j*8));
  j++;
  if (j > 7)
   j = 0;
 }

 status = be_mcc_notify_wait(adapter);

 if (!status) {
  struct be_cmd_resp_ddrdma_test *resp;

  resp = cmd->va;
  if ((memcmp(resp->rcv_buff, req->snd_buff, byte_cnt) != 0) ||
      resp->snd_err) {
   status = -1;
  }
 }

err:
 mutex_unlock(&adapter->mcc_lock);
 return status;
}
