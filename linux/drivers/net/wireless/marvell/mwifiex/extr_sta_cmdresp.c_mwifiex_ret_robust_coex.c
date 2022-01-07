
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct mwifiex_private {int dummy; } ;
struct mwifiex_ie_types_robust_coex {int mode; } ;
struct host_cmd_ds_robust_coex {int action; } ;
struct TYPE_2__ {struct host_cmd_ds_robust_coex coex; } ;
struct host_cmd_ds_command {TYPE_1__ params; } ;


 scalar_t__ HostCmd_ACT_GEN_GET ;
 scalar_t__ MWIFIEX_COEX_MODE_TIMESHARE ;
 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static int mwifiex_ret_robust_coex(struct mwifiex_private *priv,
       struct host_cmd_ds_command *resp,
       bool *is_timeshare)
{
 struct host_cmd_ds_robust_coex *coex = &resp->params.coex;
 struct mwifiex_ie_types_robust_coex *coex_tlv;
 u16 action = le16_to_cpu(coex->action);
 u32 mode;

 coex_tlv = (struct mwifiex_ie_types_robust_coex
      *)((u8 *)coex + sizeof(struct host_cmd_ds_robust_coex));
 if (action == HostCmd_ACT_GEN_GET) {
  mode = le32_to_cpu(coex_tlv->mode);
  if (mode == MWIFIEX_COEX_MODE_TIMESHARE)
   *is_timeshare = 1;
  else
   *is_timeshare = 0;
 }

 return 0;
}
