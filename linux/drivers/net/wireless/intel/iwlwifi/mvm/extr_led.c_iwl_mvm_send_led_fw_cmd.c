
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int dummy; } ;
struct iwl_led_cmd {int status; } ;
struct iwl_host_cmd {int flags; int data; int len; int id; } ;


 int CMD_ASYNC ;
 int IWL_WARN (struct iwl_mvm*,char*,int) ;
 int LEDS_CMD ;
 int LONG_GROUP ;
 int WIDE_ID (int ,int ) ;
 int cpu_to_le32 (int) ;
 int iwl_mvm_firmware_running (struct iwl_mvm*) ;
 int iwl_mvm_send_cmd (struct iwl_mvm*,struct iwl_host_cmd*) ;

__attribute__((used)) static void iwl_mvm_send_led_fw_cmd(struct iwl_mvm *mvm, bool on)
{
 struct iwl_led_cmd led_cmd = {
  .status = cpu_to_le32(on),
 };
 struct iwl_host_cmd cmd = {
  .id = WIDE_ID(LONG_GROUP, LEDS_CMD),
  .len = { sizeof(led_cmd), },
  .data = { &led_cmd, },
  .flags = CMD_ASYNC,
 };
 int err;

 if (!iwl_mvm_firmware_running(mvm))
  return;

 err = iwl_mvm_send_cmd(mvm, &cmd);

 if (err)
  IWL_WARN(mvm, "LED command failed: %d\n", err);
}
