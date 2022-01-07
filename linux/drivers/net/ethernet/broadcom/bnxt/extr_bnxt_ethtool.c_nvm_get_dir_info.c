
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct hwrm_nvm_get_dir_info_output {int entry_length; int entries; } ;
struct hwrm_nvm_get_dir_info_input {int member_0; } ;
struct bnxt {int hwrm_cmd_lock; struct hwrm_nvm_get_dir_info_output* hwrm_cmd_resp_addr; } ;
typedef int req ;


 int HWRM_CMD_TIMEOUT ;
 int HWRM_NVM_GET_DIR_INFO ;
 int _hwrm_send_message (struct bnxt*,struct hwrm_nvm_get_dir_info_input*,int,int ) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_nvm_get_dir_info_input*,int ,int,int) ;
 int le32_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct bnxt* netdev_priv (struct net_device*) ;

__attribute__((used)) static int nvm_get_dir_info(struct net_device *dev, u32 *entries, u32 *length)
{
 struct bnxt *bp = netdev_priv(dev);
 int rc;
 struct hwrm_nvm_get_dir_info_input req = {0};
 struct hwrm_nvm_get_dir_info_output *output = bp->hwrm_cmd_resp_addr;

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_NVM_GET_DIR_INFO, -1, -1);

 mutex_lock(&bp->hwrm_cmd_lock);
 rc = _hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
 if (!rc) {
  *entries = le32_to_cpu(output->entries);
  *length = le32_to_cpu(output->entry_length);
 }
 mutex_unlock(&bp->hwrm_cmd_lock);
 return rc;
}
