
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int asq_last_status; } ;
struct i40e_hw {int vendor_id; int device_id; int debug_mask; TYPE_3__ aq; } ;
struct i40e_pf {TYPE_2__* pdev; int state; struct i40e_hw hw; } ;
struct i40e_nvm_access {int config; int data_size; int offset; } ;
struct i40e_netdev_priv {TYPE_1__* vsi; } ;
struct ethtool_eeprom {int len; int magic; int offset; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {struct i40e_pf* back; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I40E_AQ_RC_EACCES ;
 int I40E_AQ_RC_EPERM ;
 int I40E_DEBUG_NVM ;
 int I40E_NVM_MOD_PNT_MASK ;
 int I40E_NVM_SECTOR_SIZE ;
 int I40E_RESOURCE_READ ;
 int __I40E_RESET_INTR_RECEIVED ;
 int __I40E_RESET_RECOVERY_PENDING ;
 int dev_info (int *,char*,int,...) ;
 int i40e_acquire_nvm (struct i40e_hw*,int ) ;
 int i40e_aq_read_nvm (struct i40e_hw*,int,int,int,int *,int,int *) ;
 int i40e_nvmupd_command (struct i40e_hw*,struct i40e_nvm_access*,int *,int*) ;
 int i40e_release_nvm (struct i40e_hw*) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static int i40e_get_eeprom(struct net_device *netdev,
      struct ethtool_eeprom *eeprom, u8 *bytes)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 struct i40e_hw *hw = &np->vsi->back->hw;
 struct i40e_pf *pf = np->vsi->back;
 int ret_val = 0, len, offset;
 u8 *eeprom_buff;
 u16 i, sectors;
 bool last;
 u32 magic;


 if (eeprom->len == 0)
  return -EINVAL;


 magic = hw->vendor_id | (hw->device_id << 16);
 if (eeprom->magic && eeprom->magic != magic) {
  struct i40e_nvm_access *cmd = (struct i40e_nvm_access *)eeprom;
  int errno = 0;


  if ((eeprom->magic >> 16) != hw->device_id)
   errno = -EINVAL;
  else if (test_bit(__I40E_RESET_RECOVERY_PENDING, pf->state) ||
    test_bit(__I40E_RESET_INTR_RECEIVED, pf->state))
   errno = -EBUSY;
  else
   ret_val = i40e_nvmupd_command(hw, cmd, bytes, &errno);

  if ((errno || ret_val) && (hw->debug_mask & I40E_DEBUG_NVM))
   dev_info(&pf->pdev->dev,
     "NVMUpdate read failed err=%d status=0x%x errno=%d module=%d offset=0x%x size=%d\n",
     ret_val, hw->aq.asq_last_status, errno,
     (u8)(cmd->config & I40E_NVM_MOD_PNT_MASK),
     cmd->offset, cmd->data_size);

  return errno;
 }


 eeprom->magic = hw->vendor_id | (hw->device_id << 16);

 eeprom_buff = kzalloc(eeprom->len, GFP_KERNEL);
 if (!eeprom_buff)
  return -ENOMEM;

 ret_val = i40e_acquire_nvm(hw, I40E_RESOURCE_READ);
 if (ret_val) {
  dev_info(&pf->pdev->dev,
    "Failed Acquiring NVM resource for read err=%d status=0x%x\n",
    ret_val, hw->aq.asq_last_status);
  goto free_buff;
 }

 sectors = eeprom->len / 4096;
 sectors += (eeprom->len % 4096) ? 1 : 0;
 len = 4096;
 last = 0;
 for (i = 0; i < sectors; i++) {
  if (i == (sectors - 1)) {
   len = eeprom->len - (4096 * i);
   last = 1;
  }
  offset = eeprom->offset + (4096 * i),
  ret_val = i40e_aq_read_nvm(hw, 0x0, offset, len,
    (u8 *)eeprom_buff + (4096 * i),
    last, ((void*)0));
  if (ret_val && hw->aq.asq_last_status == I40E_AQ_RC_EPERM) {
   dev_info(&pf->pdev->dev,
     "read NVM failed, invalid offset 0x%x\n",
     offset);
   break;
  } else if (ret_val &&
      hw->aq.asq_last_status == I40E_AQ_RC_EACCES) {
   dev_info(&pf->pdev->dev,
     "read NVM failed, access, offset 0x%x\n",
     offset);
   break;
  } else if (ret_val) {
   dev_info(&pf->pdev->dev,
     "read NVM failed offset %d err=%d status=0x%x\n",
     offset, ret_val, hw->aq.asq_last_status);
   break;
  }
 }

 i40e_release_nvm(hw);
 memcpy(bytes, (u8 *)eeprom_buff, eeprom->len);
free_buff:
 kfree(eeprom_buff);
 return ret_val;
}
