
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lbtf_private {int dummy; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_802_11_beacon_control {TYPE_1__ hdr; void* beacon_period; void* beacon_enable; void* action; } ;
typedef int cmd ;


 int CMD_802_11_BEACON_CTRL ;
 int CMD_ACT_SET ;
 int LBTF_DEB_CMD ;
 void* cpu_to_le16 (int) ;
 int lbtf_cmd_async (struct lbtf_private*,int ,TYPE_1__*,int) ;
 int lbtf_deb_enter (int ) ;
 int lbtf_deb_leave (int ) ;

int lbtf_beacon_ctrl(struct lbtf_private *priv, bool beacon_enable,
       int beacon_int)
{
 struct cmd_ds_802_11_beacon_control cmd;
 lbtf_deb_enter(LBTF_DEB_CMD);

 cmd.hdr.size = cpu_to_le16(sizeof(cmd));
 cmd.action = cpu_to_le16(CMD_ACT_SET);
 cmd.beacon_enable = cpu_to_le16(beacon_enable);
 cmd.beacon_period = cpu_to_le16(beacon_int);

 lbtf_cmd_async(priv, CMD_802_11_BEACON_CTRL, &cmd.hdr, sizeof(cmd));

 lbtf_deb_leave(LBTF_DEB_CMD);
 return 0;
}
