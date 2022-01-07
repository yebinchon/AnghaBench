
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lbs_private {TYPE_1__* dev; } ;
struct TYPE_4__ {void* size; } ;
struct cmd_ds_802_11_monitor_mode {void* mode; void* action; TYPE_2__ hdr; } ;
typedef int cmd ;
struct TYPE_3__ {int type; } ;


 int ARPHRD_ETHER ;
 int ARPHRD_IEEE80211_RADIOTAP ;
 int CMD_802_11_MONITOR_MODE ;
 int CMD_ACT_SET ;
 void* cpu_to_le16 (int) ;
 int lbs_cmd_with_response (struct lbs_private*,int ,struct cmd_ds_802_11_monitor_mode*) ;
 int lbs_deb_cmd (char*,int) ;
 int memset (struct cmd_ds_802_11_monitor_mode*,int ,int) ;

int lbs_set_monitor_mode(struct lbs_private *priv, int enable)
{
 struct cmd_ds_802_11_monitor_mode cmd;
 int ret;

 memset(&cmd, 0, sizeof(cmd));
 cmd.hdr.size = cpu_to_le16(sizeof(cmd));
 cmd.action = cpu_to_le16(CMD_ACT_SET);
 if (enable)
  cmd.mode = cpu_to_le16(0x1);

 lbs_deb_cmd("SET_MONITOR_MODE: %d\n", enable);

 ret = lbs_cmd_with_response(priv, CMD_802_11_MONITOR_MODE, &cmd);
 if (ret == 0) {
  priv->dev->type = enable ? ARPHRD_IEEE80211_RADIOTAP :
      ARPHRD_ETHER;
 }

 return ret;
}
