
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwl8k_priv {int radio_on; scalar_t__ radio_short_preamble; } ;
struct TYPE_2__ {void* length; void* code; } ;
struct mwl8k_cmd_radio_control {TYPE_1__ header; void* radio_on; void* control; void* action; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MWL8K_CMD_RADIO_CONTROL ;
 int MWL8K_CMD_SET ;
 void* cpu_to_le16 (int) ;
 int kfree (struct mwl8k_cmd_radio_control*) ;
 struct mwl8k_cmd_radio_control* kzalloc (int,int ) ;
 int mwl8k_post_cmd (struct ieee80211_hw*,TYPE_1__*) ;

__attribute__((used)) static int
mwl8k_cmd_radio_control(struct ieee80211_hw *hw, bool enable, bool force)
{
 struct mwl8k_priv *priv = hw->priv;
 struct mwl8k_cmd_radio_control *cmd;
 int rc;

 if (enable == priv->radio_on && !force)
  return 0;

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (cmd == ((void*)0))
  return -ENOMEM;

 cmd->header.code = cpu_to_le16(MWL8K_CMD_RADIO_CONTROL);
 cmd->header.length = cpu_to_le16(sizeof(*cmd));
 cmd->action = cpu_to_le16(MWL8K_CMD_SET);
 cmd->control = cpu_to_le16(priv->radio_short_preamble ? 3 : 1);
 cmd->radio_on = cpu_to_le16(enable ? 0x0001 : 0x0000);

 rc = mwl8k_post_cmd(hw, &cmd->header);
 kfree(cmd);

 if (!rc)
  priv->radio_on = enable;

 return rc;
}
