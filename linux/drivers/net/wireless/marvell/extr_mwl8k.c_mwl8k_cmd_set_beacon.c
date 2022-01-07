
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {void* length; void* code; } ;
struct mwl8k_cmd_set_beacon {TYPE_1__ header; int beacon; void* beacon_len; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MWL8K_CMD_SET_BEACON ;
 void* cpu_to_le16 (int) ;
 int kfree (struct mwl8k_cmd_set_beacon*) ;
 struct mwl8k_cmd_set_beacon* kzalloc (int,int ) ;
 int memcpy (int ,int *,int) ;
 int mwl8k_post_pervif_cmd (struct ieee80211_hw*,struct ieee80211_vif*,TYPE_1__*) ;

__attribute__((used)) static int mwl8k_cmd_set_beacon(struct ieee80211_hw *hw,
    struct ieee80211_vif *vif, u8 *beacon, int len)
{
 struct mwl8k_cmd_set_beacon *cmd;
 int rc;

 cmd = kzalloc(sizeof(*cmd) + len, GFP_KERNEL);
 if (cmd == ((void*)0))
  return -ENOMEM;

 cmd->header.code = cpu_to_le16(MWL8K_CMD_SET_BEACON);
 cmd->header.length = cpu_to_le16(sizeof(*cmd) + len);
 cmd->beacon_len = cpu_to_le16(len);
 memcpy(cmd->beacon, beacon, len);

 rc = mwl8k_post_pervif_cmd(hw, vif, &cmd->header);
 kfree(cmd);

 return rc;
}
