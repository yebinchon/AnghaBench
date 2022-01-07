
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {void* length; void* code; } ;
struct mwl8k_cmd_set_rate {TYPE_1__ header; int mcs_set; int legacy_rates; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MWL8K_CMD_SET_RATE ;
 void* cpu_to_le16 (int) ;
 int kfree (struct mwl8k_cmd_set_rate*) ;
 struct mwl8k_cmd_set_rate* kzalloc (int,int ) ;
 int legacy_rate_mask_to_array (int ,int ) ;
 int memcpy (int ,int *,int) ;
 int mwl8k_post_cmd (struct ieee80211_hw*,TYPE_1__*) ;

__attribute__((used)) static int
mwl8k_cmd_set_rate(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
     u32 legacy_rate_mask, u8 *mcs_rates)
{
 struct mwl8k_cmd_set_rate *cmd;
 int rc;

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (cmd == ((void*)0))
  return -ENOMEM;

 cmd->header.code = cpu_to_le16(MWL8K_CMD_SET_RATE);
 cmd->header.length = cpu_to_le16(sizeof(*cmd));
 legacy_rate_mask_to_array(cmd->legacy_rates, legacy_rate_mask);
 memcpy(cmd->mcs_set, mcs_rates, 16);

 rc = mwl8k_post_cmd(hw, &cmd->header);
 kfree(cmd);

 return rc;
}
