
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* length; void* code; } ;
struct mwl8k_cmd_set_post_scan {TYPE_1__ header; int bssid; scalar_t__ isibss; } ;
struct ieee80211_hw {int dummy; } ;
typedef int __u8 ;


 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int MWL8K_CMD_SET_POST_SCAN ;
 void* cpu_to_le16 (int) ;
 int kfree (struct mwl8k_cmd_set_post_scan*) ;
 struct mwl8k_cmd_set_post_scan* kzalloc (int,int ) ;
 int memcpy (int ,int const*,int ) ;
 int mwl8k_post_cmd (struct ieee80211_hw*,TYPE_1__*) ;

__attribute__((used)) static int
mwl8k_cmd_set_post_scan(struct ieee80211_hw *hw, const __u8 *mac)
{
 struct mwl8k_cmd_set_post_scan *cmd;
 int rc;

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (cmd == ((void*)0))
  return -ENOMEM;

 cmd->header.code = cpu_to_le16(MWL8K_CMD_SET_POST_SCAN);
 cmd->header.length = cpu_to_le16(sizeof(*cmd));
 cmd->isibss = 0;
 memcpy(cmd->bssid, mac, ETH_ALEN);

 rc = mwl8k_post_cmd(hw, &cmd->header);
 kfree(cmd);

 return rc;
}
