
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lbs_private {int dummy; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_802_11_enable_rsn {void* enable; void* action; TYPE_1__ hdr; } ;
typedef int cmd ;


 int CMD_802_11_ENABLE_RSN ;
 int CMD_ACT_SET ;
 void* cpu_to_le16 (int) ;
 int lbs_cmd_with_response (struct lbs_private*,int ,struct cmd_ds_802_11_enable_rsn*) ;
 int memset (struct cmd_ds_802_11_enable_rsn*,int ,int) ;

__attribute__((used)) static int lbs_enable_rsn(struct lbs_private *priv, int enable)
{
 struct cmd_ds_802_11_enable_rsn cmd;
 int ret;
 memset(&cmd, 0, sizeof(cmd));
 cmd.hdr.size = cpu_to_le16(sizeof(cmd));
 cmd.action = cpu_to_le16(CMD_ACT_SET);
 cmd.enable = cpu_to_le16(enable);

 ret = lbs_cmd_with_response(priv, CMD_802_11_ENABLE_RSN, &cmd);

 return ret;
}
