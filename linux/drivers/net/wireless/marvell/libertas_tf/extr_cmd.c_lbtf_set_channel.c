
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lbtf_private {int dummy; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_802_11_rf_channel {void* channel; void* action; TYPE_1__ hdr; } ;
typedef int cmd ;


 int CMD_802_11_RF_CHANNEL ;
 int CMD_OPT_802_11_RF_CHANNEL_SET ;
 int LBTF_DEB_CMD ;
 void* cpu_to_le16 (int) ;
 int lbtf_cmd_with_response (struct lbtf_private*,int ,struct cmd_ds_802_11_rf_channel*) ;
 int lbtf_deb_enter (int ) ;
 int lbtf_deb_leave_args (int ,char*,int) ;

int lbtf_set_channel(struct lbtf_private *priv, u8 channel)
{
 int ret = 0;
 struct cmd_ds_802_11_rf_channel cmd;

 lbtf_deb_enter(LBTF_DEB_CMD);

 cmd.hdr.size = cpu_to_le16(sizeof(cmd));
 cmd.action = cpu_to_le16(CMD_OPT_802_11_RF_CHANNEL_SET);
 cmd.channel = cpu_to_le16(channel);

 ret = lbtf_cmd_with_response(priv, CMD_802_11_RF_CHANNEL, &cmd);
 lbtf_deb_leave_args(LBTF_DEB_CMD, "ret %d", ret);
 return ret;
}
