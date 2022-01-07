
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_mvm {int dummy; } ;
struct iwl_mu_group_mgmt_cmd {int user_position; int membership_status; } ;
struct TYPE_3__ {int position; int membership; } ;
struct TYPE_4__ {TYPE_1__ mu_group; } ;
struct ieee80211_vif {TYPE_2__ bss_conf; } ;
typedef int cmd ;


 int DATA_PATH_GROUP ;
 int UPDATE_MU_GROUPS_CMD ;
 int WIDE_ID (int ,int ) ;
 int WLAN_MEMBERSHIP_LEN ;
 int WLAN_USER_POSITION_LEN ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_mu_group_mgmt_cmd*) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int iwl_mvm_update_mu_groups(struct iwl_mvm *mvm,
        struct ieee80211_vif *vif)
{
 struct iwl_mu_group_mgmt_cmd cmd = {};

 memcpy(cmd.membership_status, vif->bss_conf.mu_group.membership,
        WLAN_MEMBERSHIP_LEN);
 memcpy(cmd.user_position, vif->bss_conf.mu_group.position,
        WLAN_USER_POSITION_LEN);

 return iwl_mvm_send_cmd_pdu(mvm,
        WIDE_ID(DATA_PATH_GROUP,
         UPDATE_MU_GROUPS_CMD),
        0, sizeof(cmd), &cmd);
}
