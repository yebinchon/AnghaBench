
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm {int trans; TYPE_1__* fw; } ;
struct TYPE_2__ {int ucode_capa; } ;


 int CSR_LED_REG ;
 int CSR_LED_REG_TURN_OFF ;
 int CSR_LED_REG_TURN_ON ;
 int IWL_UCODE_TLV_CAPA_LED_CMD_SUPPORT ;
 scalar_t__ fw_has_capa (int *,int ) ;
 int iwl_mvm_send_led_fw_cmd (struct iwl_mvm*,int) ;
 int iwl_write32 (int ,int ,int ) ;

__attribute__((used)) static void iwl_mvm_led_set(struct iwl_mvm *mvm, bool on)
{
 if (fw_has_capa(&mvm->fw->ucode_capa,
   IWL_UCODE_TLV_CAPA_LED_CMD_SUPPORT)) {
  iwl_mvm_send_led_fw_cmd(mvm, on);
  return;
 }

 iwl_write32(mvm->trans, CSR_LED_REG,
      on ? CSR_LED_REG_TURN_ON : CSR_LED_REG_TURN_OFF);
}
