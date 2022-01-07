
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct hwrm_nvm_find_dir_entry_output {int dir_data_length; int dir_item_length; int dir_idx; } ;
struct hwrm_nvm_find_dir_entry_input {int opt_ordinal; void* dir_ext; void* dir_ordinal; void* dir_type; scalar_t__ dir_idx; scalar_t__ enables; int member_0; } ;
struct bnxt {int hwrm_cmd_lock; struct hwrm_nvm_find_dir_entry_output* hwrm_cmd_resp_addr; } ;
typedef int req ;


 int HWRM_CMD_TIMEOUT ;
 int HWRM_NVM_FIND_DIR_ENTRY ;
 int NVM_FIND_DIR_ENTRY_REQ_OPT_ORDINAL_EQ ;
 int _hwrm_send_message_silent (struct bnxt*,struct hwrm_nvm_find_dir_entry_input*,int,int ) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_nvm_find_dir_entry_input*,int ,int,int) ;
 void* cpu_to_le16 (int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct bnxt* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnxt_find_nvram_item(struct net_device *dev, u16 type, u16 ordinal,
    u16 ext, u16 *index, u32 *item_length,
    u32 *data_length)
{
 struct bnxt *bp = netdev_priv(dev);
 int rc;
 struct hwrm_nvm_find_dir_entry_input req = {0};
 struct hwrm_nvm_find_dir_entry_output *output = bp->hwrm_cmd_resp_addr;

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_NVM_FIND_DIR_ENTRY, -1, -1);
 req.enables = 0;
 req.dir_idx = 0;
 req.dir_type = cpu_to_le16(type);
 req.dir_ordinal = cpu_to_le16(ordinal);
 req.dir_ext = cpu_to_le16(ext);
 req.opt_ordinal = NVM_FIND_DIR_ENTRY_REQ_OPT_ORDINAL_EQ;
 mutex_lock(&bp->hwrm_cmd_lock);
 rc = _hwrm_send_message_silent(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
 if (rc == 0) {
  if (index)
   *index = le16_to_cpu(output->dir_idx);
  if (item_length)
   *item_length = le32_to_cpu(output->dir_item_length);
  if (data_length)
   *data_length = le32_to_cpu(output->dir_data_length);
 }
 mutex_unlock(&bp->hwrm_cmd_lock);
 return rc;
}
