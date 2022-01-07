
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iwl_mvm_firmware_running (void*) ;

__attribute__((used)) static bool iwl_mvm_fwrt_fw_running(void *ctx)
{
 return iwl_mvm_firmware_running(ctx);
}
