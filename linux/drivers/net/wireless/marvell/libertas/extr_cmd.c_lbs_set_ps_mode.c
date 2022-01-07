
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct lbs_private {int dummy; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_802_11_ps_mode {TYPE_1__ hdr; void* multipledtim; void* action; } ;
typedef int cmd ;


 int CMD_802_11_PS_MODE ;
 int EOPNOTSUPP ;
 int PS_MODE_ACTION_ENTER_PS ;
 int PS_MODE_ACTION_EXIT_PS ;
 void* cpu_to_le16 (int) ;
 int lbs_cmd_async (struct lbs_private*,int ,TYPE_1__*,int) ;
 int lbs_cmd_with_response (struct lbs_private*,int ,struct cmd_ds_802_11_ps_mode*) ;
 int lbs_deb_cmd (char*,...) ;
 int memset (struct cmd_ds_802_11_ps_mode*,int ,int) ;

int lbs_set_ps_mode(struct lbs_private *priv, u16 cmd_action, bool block)
{
 struct cmd_ds_802_11_ps_mode cmd;
 int ret = 0;

 memset(&cmd, 0, sizeof(cmd));
 cmd.hdr.size = cpu_to_le16(sizeof(cmd));
 cmd.action = cpu_to_le16(cmd_action);

 if (cmd_action == PS_MODE_ACTION_ENTER_PS) {
  lbs_deb_cmd("PS_MODE: action ENTER_PS\n");
  cmd.multipledtim = cpu_to_le16(1);
 } else if (cmd_action == PS_MODE_ACTION_EXIT_PS) {
  lbs_deb_cmd("PS_MODE: action EXIT_PS\n");
 } else {



  lbs_deb_cmd("PS_MODE: unknown action 0x%X\n", cmd_action);
  ret = -EOPNOTSUPP;
  goto out;
 }

 if (block)
  ret = lbs_cmd_with_response(priv, CMD_802_11_PS_MODE, &cmd);
 else
  lbs_cmd_async(priv, CMD_802_11_PS_MODE, &cmd.hdr, sizeof (cmd));

out:
 return ret;
}
