
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union devlink_param_value {int dummy; } devlink_param_value ;
typedef union bnxt_nvm_data {int dummy; } bnxt_nvm_data ;
typedef scalar_t__ u32 ;
struct hwrm_nvm_get_variable_input {void* req_type; void* dimensions; void* index_0; void* option_num; void* data_len; int dest_data_addr; } ;
struct bnxt_dl_nvm_param {scalar_t__ id; scalar_t__ dir_type; int nvm_num_bits; int offset; int dl_num_bytes; } ;
struct TYPE_3__ {int port_id; int fw_fid; } ;
struct bnxt {int dev; TYPE_2__* pdev; TYPE_1__ pf; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int dev; } ;


 int ARRAY_SIZE (struct bnxt_dl_nvm_param*) ;
 int BNXT_FIRST_PF_FID ;
 scalar_t__ BNXT_NVM_FUNC_CFG ;
 scalar_t__ BNXT_NVM_PORT_CFG ;
 scalar_t__ BNXT_VF (struct bnxt*) ;
 int EACCES ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int EPERM ;
 int GFP_KERNEL ;
 int HWRM_CMD_TIMEOUT ;
 int HWRM_NVM_SET_VARIABLE ;
 int bnxt_copy_from_nvm_data (union devlink_param_value*,union bnxt_nvm_data*,int,int ) ;
 int bnxt_copy_to_nvm_data (union bnxt_nvm_data*,union devlink_param_value*,int,int ) ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le64 (int ) ;
 union bnxt_nvm_data* dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,union bnxt_nvm_data*,int ) ;
 int hwrm_send_message (struct bnxt*,void*,int,int ) ;
 int hwrm_send_message_silent (struct bnxt*,void*,int,int ) ;
 int netdev_err (int ,char*) ;
 struct bnxt_dl_nvm_param* nvm_params ;

__attribute__((used)) static int bnxt_hwrm_nvm_req(struct bnxt *bp, u32 param_id, void *msg,
        int msg_len, union devlink_param_value *val)
{
 struct hwrm_nvm_get_variable_input *req = msg;
 struct bnxt_dl_nvm_param nvm_param;
 union bnxt_nvm_data *data;
 dma_addr_t data_dma_addr;
 int idx = 0, rc, i;


 if (BNXT_VF(bp))
  return -EPERM;

 for (i = 0; i < ARRAY_SIZE(nvm_params); i++) {
  if (nvm_params[i].id == param_id) {
   nvm_param = nvm_params[i];
   break;
  }
 }

 if (i == ARRAY_SIZE(nvm_params))
  return -EOPNOTSUPP;

 if (nvm_param.dir_type == BNXT_NVM_PORT_CFG)
  idx = bp->pf.port_id;
 else if (nvm_param.dir_type == BNXT_NVM_FUNC_CFG)
  idx = bp->pf.fw_fid - BNXT_FIRST_PF_FID;

 data = dma_alloc_coherent(&bp->pdev->dev, sizeof(*data),
      &data_dma_addr, GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 req->dest_data_addr = cpu_to_le64(data_dma_addr);
 req->data_len = cpu_to_le16(nvm_param.nvm_num_bits);
 req->option_num = cpu_to_le16(nvm_param.offset);
 req->index_0 = cpu_to_le16(idx);
 if (idx)
  req->dimensions = cpu_to_le16(1);

 if (req->req_type == cpu_to_le16(HWRM_NVM_SET_VARIABLE)) {
  bnxt_copy_to_nvm_data(data, val, nvm_param.nvm_num_bits,
          nvm_param.dl_num_bytes);
  rc = hwrm_send_message(bp, msg, msg_len, HWRM_CMD_TIMEOUT);
 } else {
  rc = hwrm_send_message_silent(bp, msg, msg_len,
           HWRM_CMD_TIMEOUT);
  if (!rc)
   bnxt_copy_from_nvm_data(val, data,
      nvm_param.nvm_num_bits,
      nvm_param.dl_num_bytes);
 }
 dma_free_coherent(&bp->pdev->dev, sizeof(*data), data, data_dma_addr);
 if (rc == -EACCES)
  netdev_err(bp->dev, "PF does not have admin privileges to modify NVM config\n");
 return rc;
}
