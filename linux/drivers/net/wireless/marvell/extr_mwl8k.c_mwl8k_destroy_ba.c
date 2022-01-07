
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {void* length; void* code; } ;
struct TYPE_3__ {void* ba_context; } ;
struct mwl8k_cmd_bastream {TYPE_2__ header; TYPE_1__ destroy_params; void* action; } ;
struct ieee80211_hw {int wiphy; } ;


 int GFP_KERNEL ;
 int MWL8K_BA_DESTROY ;
 int MWL8K_CMD_BASTREAM ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int ) ;
 int kfree (struct mwl8k_cmd_bastream*) ;
 struct mwl8k_cmd_bastream* kzalloc (int,int ) ;
 int mwl8k_post_cmd (struct ieee80211_hw*,TYPE_2__*) ;
 int wiphy_debug (int ,char*,int ) ;

__attribute__((used)) static void mwl8k_destroy_ba(struct ieee80211_hw *hw,
        u8 idx)
{
 struct mwl8k_cmd_bastream *cmd;

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (cmd == ((void*)0))
  return;

 cmd->header.code = cpu_to_le16(MWL8K_CMD_BASTREAM);
 cmd->header.length = cpu_to_le16(sizeof(*cmd));
 cmd->action = cpu_to_le32(MWL8K_BA_DESTROY);

 cmd->destroy_params.ba_context = cpu_to_le32(idx);
 mwl8k_post_cmd(hw, &cmd->header);

 wiphy_debug(hw->wiphy, "Deleted BA stream index %d\n", idx);

 kfree(cmd);
}
