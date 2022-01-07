
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int delay; int wk; } ;
struct iwl_fw_runtime {TYPE_1__ timestamp; } ;


 int IWL_INFO (struct iwl_fw_runtime*,char*,int) ;
 int iwl_fw_cancel_timestamp (struct iwl_fw_runtime*) ;
 int msecs_to_jiffies (int) ;
 int round_jiffies_relative (int ) ;
 int schedule_delayed_work (int *,int ) ;

void iwl_fw_trigger_timestamp(struct iwl_fw_runtime *fwrt, u32 delay)
{
 IWL_INFO(fwrt,
   "starting timestamp_marker trigger with delay: %us\n",
   delay);

 iwl_fw_cancel_timestamp(fwrt);

 fwrt->timestamp.delay = msecs_to_jiffies(delay * 1000);

 schedule_delayed_work(&fwrt->timestamp.wk,
         round_jiffies_relative(fwrt->timestamp.delay));
}
