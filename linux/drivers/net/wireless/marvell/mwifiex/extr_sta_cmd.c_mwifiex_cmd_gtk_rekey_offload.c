
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct mwifiex_private {int dummy; } ;
struct host_cmd_ds_gtk_rekey_params {void* replay_ctr_high; void* replay_ctr_low; int kck; int kek; void* action; } ;
struct TYPE_2__ {struct host_cmd_ds_gtk_rekey_params rekey; } ;
struct host_cmd_ds_command {void* size; void* command; TYPE_1__ params; } ;
struct cfg80211_gtk_rekey_data {scalar_t__ replay_ctr; int kck; int kek; } ;
typedef int __be64 ;


 scalar_t__ HostCmd_ACT_GEN_SET ;
 scalar_t__ HostCmd_CMD_GTK_REKEY_OFFLOAD_CFG ;
 int NL80211_KCK_LEN ;
 int NL80211_KEK_LEN ;
 scalar_t__ S_DS_GEN ;
 int be64_to_cpup (int *) ;
 void* cpu_to_le16 (scalar_t__) ;
 void* cpu_to_le32 (int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int mwifiex_cmd_gtk_rekey_offload(struct mwifiex_private *priv,
      struct host_cmd_ds_command *cmd,
      u16 cmd_action,
      struct cfg80211_gtk_rekey_data *data)
{
 struct host_cmd_ds_gtk_rekey_params *rekey = &cmd->params.rekey;
 u64 rekey_ctr;

 cmd->command = cpu_to_le16(HostCmd_CMD_GTK_REKEY_OFFLOAD_CFG);
 cmd->size = cpu_to_le16(sizeof(*rekey) + S_DS_GEN);

 rekey->action = cpu_to_le16(cmd_action);
 if (cmd_action == HostCmd_ACT_GEN_SET) {
  memcpy(rekey->kek, data->kek, NL80211_KEK_LEN);
  memcpy(rekey->kck, data->kck, NL80211_KCK_LEN);
  rekey_ctr = be64_to_cpup((__be64 *)data->replay_ctr);
  rekey->replay_ctr_low = cpu_to_le32((u32)rekey_ctr);
  rekey->replay_ctr_high =
   cpu_to_le32((u32)((u64)rekey_ctr >> 32));
 }

 return 0;
}
