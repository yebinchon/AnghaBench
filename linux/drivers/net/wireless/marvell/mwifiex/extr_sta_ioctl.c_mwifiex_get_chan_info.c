
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_private {int dummy; } ;
struct mwifiex_channel_band {int dummy; } ;


 int HostCmd_ACT_GEN_GET ;
 int HostCmd_CMD_STA_CONFIGURE ;
 int MWIFIEX_SYNC_CMD ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,struct mwifiex_channel_band*,int ) ;

int mwifiex_get_chan_info(struct mwifiex_private *priv,
     struct mwifiex_channel_band *channel_band)
{
 int status = 0;

 status = mwifiex_send_cmd(priv, HostCmd_CMD_STA_CONFIGURE,
      HostCmd_ACT_GEN_GET, 0, channel_band,
      MWIFIEX_SYNC_CMD);

 return status;
}
