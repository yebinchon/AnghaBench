
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct iwl_mvm {int scan_rx_ant; TYPE_1__* fw; } ;
typedef size_t ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {int ucode_capa; } ;


 int ANT_ABC ;
 size_t EINVAL ;
 size_t EIO ;
 int IWL_UCODE_TLV_CAPA_UMAC_SCAN ;
 scalar_t__ fw_has_capa (int *,int ) ;
 int iwl_mvm_config_scan (struct iwl_mvm*) ;
 int iwl_mvm_firmware_running (struct iwl_mvm*) ;
 int iwl_mvm_get_valid_rx_ant (struct iwl_mvm*) ;
 int sscanf (char*,char*,int*) ;

__attribute__((used)) static ssize_t
iwl_dbgfs_scan_ant_rxchain_write(struct iwl_mvm *mvm, char *buf,
     size_t count, loff_t *ppos)
{
 u8 scan_rx_ant;

 if (!iwl_mvm_firmware_running(mvm))
  return -EIO;

 if (sscanf(buf, "%hhx", &scan_rx_ant) != 1)
  return -EINVAL;
 if (scan_rx_ant > ANT_ABC)
  return -EINVAL;
 if (scan_rx_ant & ~(iwl_mvm_get_valid_rx_ant(mvm)))
  return -EINVAL;

 if (mvm->scan_rx_ant != scan_rx_ant) {
  mvm->scan_rx_ant = scan_rx_ant;
  if (fw_has_capa(&mvm->fw->ucode_capa,
    IWL_UCODE_TLV_CAPA_UMAC_SCAN))
   iwl_mvm_config_scan(mvm);
 }

 return count;
}
