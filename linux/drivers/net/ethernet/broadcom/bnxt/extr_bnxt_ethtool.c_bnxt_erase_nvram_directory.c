
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct hwrm_nvm_erase_dir_entry_input {int dir_idx; int member_0; } ;
struct bnxt {int dummy; } ;
typedef int req ;


 int HWRM_CMD_TIMEOUT ;
 int HWRM_NVM_ERASE_DIR_ENTRY ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_nvm_erase_dir_entry_input*,int ,int,int) ;
 int cpu_to_le16 (int ) ;
 int hwrm_send_message (struct bnxt*,struct hwrm_nvm_erase_dir_entry_input*,int,int ) ;
 struct bnxt* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnxt_erase_nvram_directory(struct net_device *dev, u8 index)
{
 struct bnxt *bp = netdev_priv(dev);
 struct hwrm_nvm_erase_dir_entry_input req = {0};

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_NVM_ERASE_DIR_ENTRY, -1, -1);
 req.dir_idx = cpu_to_le16(index);
 return hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
}
