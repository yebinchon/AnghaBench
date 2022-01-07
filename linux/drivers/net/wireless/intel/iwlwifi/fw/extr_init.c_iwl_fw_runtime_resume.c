
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_fw_runtime {int dummy; } ;


 int iwl_fw_resume_timestamp (struct iwl_fw_runtime*) ;

void iwl_fw_runtime_resume(struct iwl_fw_runtime *fwrt)
{
 iwl_fw_resume_timestamp(fwrt);
}
