
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* length; void* code; } ;
struct mwl8k_cmd_rf_antenna {TYPE_1__ header; void* mode; void* antenna; } ;
struct ieee80211_hw {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MWL8K_CMD_RF_ANTENNA ;
 void* cpu_to_le16 (int) ;
 int kfree (struct mwl8k_cmd_rf_antenna*) ;
 struct mwl8k_cmd_rf_antenna* kzalloc (int,int ) ;
 int mwl8k_post_cmd (struct ieee80211_hw*,TYPE_1__*) ;

__attribute__((used)) static int
mwl8k_cmd_rf_antenna(struct ieee80211_hw *hw, int antenna, int mask)
{
 struct mwl8k_cmd_rf_antenna *cmd;
 int rc;

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (cmd == ((void*)0))
  return -ENOMEM;

 cmd->header.code = cpu_to_le16(MWL8K_CMD_RF_ANTENNA);
 cmd->header.length = cpu_to_le16(sizeof(*cmd));
 cmd->antenna = cpu_to_le16(antenna);
 cmd->mode = cpu_to_le16(mask);

 rc = mwl8k_post_cmd(hw, &cmd->header);
 kfree(cmd);

 return rc;
}
