
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct iwl_notification_wait {int dummy; } ;
struct iwl_mvm_sniffer_apply {void* bssid; int aid; struct iwl_mvm* mvm; } ;
struct iwl_mvm {int mutex; int notif_wait; } ;
struct iwl_he_monitor_cmd {int * bssid; int aid; } ;
typedef size_t ssize_t ;
typedef int loff_t ;
typedef int he_mon_cmd ;


 int ARRAY_SIZE (int *) ;
 int DATA_PATH_GROUP ;
 size_t EINVAL ;
 size_t EIO ;
 int HE_AIR_SNIFFER_CONFIG_CMD ;
 int cpu_to_le16 (int ) ;
 int iwl_cmd_id (int ,int ,int ) ;
 int iwl_init_notification_wait (int *,struct iwl_notification_wait*,int *,int ,int ,struct iwl_mvm_sniffer_apply*) ;
 int iwl_mvm_firmware_running (struct iwl_mvm*) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_he_monitor_cmd*) ;
 int iwl_mvm_sniffer_apply ;
 int iwl_remove_notification (int *,struct iwl_notification_wait*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sscanf (char*,char*,int *,int *,int *,int *,int *,int *,int *) ;

__attribute__((used)) static ssize_t
iwl_dbgfs_he_sniffer_params_write(struct iwl_mvm *mvm, char *buf,
      size_t count, loff_t *ppos)
{
 struct iwl_notification_wait wait;
 struct iwl_he_monitor_cmd he_mon_cmd = {};
 struct iwl_mvm_sniffer_apply apply = {
  .mvm = mvm,
 };
 u16 wait_cmds[] = {
  iwl_cmd_id(HE_AIR_SNIFFER_CONFIG_CMD, DATA_PATH_GROUP, 0),
 };
 u32 aid;
 int ret;

 if (!iwl_mvm_firmware_running(mvm))
  return -EIO;

 ret = sscanf(buf, "%x %2hhx:%2hhx:%2hhx:%2hhx:%2hhx:%2hhx", &aid,
       &he_mon_cmd.bssid[0], &he_mon_cmd.bssid[1],
       &he_mon_cmd.bssid[2], &he_mon_cmd.bssid[3],
       &he_mon_cmd.bssid[4], &he_mon_cmd.bssid[5]);
 if (ret != 7)
  return -EINVAL;

 he_mon_cmd.aid = cpu_to_le16(aid);

 apply.aid = aid;
 apply.bssid = (void *)he_mon_cmd.bssid;

 mutex_lock(&mvm->mutex);
 iwl_init_notification_wait(&mvm->notif_wait, &wait,
       wait_cmds, ARRAY_SIZE(wait_cmds),
       iwl_mvm_sniffer_apply, &apply);

 ret = iwl_mvm_send_cmd_pdu(mvm, iwl_cmd_id(HE_AIR_SNIFFER_CONFIG_CMD,
         DATA_PATH_GROUP, 0), 0,
       sizeof(he_mon_cmd), &he_mon_cmd);


 iwl_remove_notification(&mvm->notif_wait, &wait);

 mutex_unlock(&mvm->mutex);

 return ret ?: count;
}
