
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {void* length; void* code; } ;
struct mwl8k_cmd_update_stadb {TYPE_1__ header; int peer_addr; int action; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int MWL8K_CMD_UPDATE_STADB ;
 int MWL8K_STA_DB_DEL_ENTRY ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int kfree (struct mwl8k_cmd_update_stadb*) ;
 struct mwl8k_cmd_update_stadb* kzalloc (int,int ) ;
 int memcpy (int ,int *,int ) ;
 int mwl8k_post_cmd (struct ieee80211_hw*,TYPE_1__*) ;

__attribute__((used)) static int mwl8k_cmd_update_stadb_del(struct ieee80211_hw *hw,
          struct ieee80211_vif *vif, u8 *addr)
{
 struct mwl8k_cmd_update_stadb *cmd;
 int rc;

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (cmd == ((void*)0))
  return -ENOMEM;

 cmd->header.code = cpu_to_le16(MWL8K_CMD_UPDATE_STADB);
 cmd->header.length = cpu_to_le16(sizeof(*cmd));
 cmd->action = cpu_to_le32(MWL8K_STA_DB_DEL_ENTRY);
 memcpy(cmd->peer_addr, addr, ETH_ALEN);

 rc = mwl8k_post_cmd(hw, &cmd->header);
 kfree(cmd);

 return rc;
}
