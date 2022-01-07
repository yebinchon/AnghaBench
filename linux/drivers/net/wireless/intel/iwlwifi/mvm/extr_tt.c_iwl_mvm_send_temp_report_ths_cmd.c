
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct temp_report_ths_cmd {int * thresholds; int num_temps; int member_0; } ;
struct TYPE_2__ {scalar_t__* temp_trips; int* fw_trips_index; int tzone; } ;
struct iwl_mvm {TYPE_1__ tz_device; int mutex; } ;
typedef int s16 ;
typedef int cmd ;


 int IWL_ERR (struct iwl_mvm*,char*,int) ;
 int IWL_MAX_DTS_TRIPS ;
 int PHY_OPS_GROUP ;
 scalar_t__ S16_MIN ;
 int TEMP_REPORTING_THRESHOLDS_CMD ;
 int WIDE_ID (int ,int ) ;
 int compare_temps ;
 int cpu_to_le16 (scalar_t__) ;
 int cpu_to_le32 (int) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct temp_report_ths_cmd*) ;
 scalar_t__ le16_to_cpu (int ) ;
 int lockdep_assert_held (int *) ;
 int sort (int *,int,int,int ,int *) ;

int iwl_mvm_send_temp_report_ths_cmd(struct iwl_mvm *mvm)
{
 struct temp_report_ths_cmd cmd = {0};
 int ret;
 ret = iwl_mvm_send_cmd_pdu(mvm, WIDE_ID(PHY_OPS_GROUP,
      TEMP_REPORTING_THRESHOLDS_CMD),
       0, sizeof(cmd), &cmd);
 if (ret)
  IWL_ERR(mvm, "TEMP_REPORT_THS_CMD command failed (err=%d)\n",
   ret);

 return ret;
}
