
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lbs_private {int mac_control; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_mac_control {scalar_t__ reserved; void* action; TYPE_1__ hdr; } ;
typedef int cmd ;


 int CMD_MAC_CONTROL ;
 void* cpu_to_le16 (int) ;
 int lbs_cmd_with_response (struct lbs_private*,int ,struct cmd_ds_mac_control*) ;

int lbs_set_mac_control_sync(struct lbs_private *priv)
{
 struct cmd_ds_mac_control cmd;
 int ret = 0;

 cmd.hdr.size = cpu_to_le16(sizeof(cmd));
 cmd.action = cpu_to_le16(priv->mac_control);
 cmd.reserved = 0;
 ret = lbs_cmd_with_response(priv, CMD_MAC_CONTROL, &cmd);

 return ret;
}
