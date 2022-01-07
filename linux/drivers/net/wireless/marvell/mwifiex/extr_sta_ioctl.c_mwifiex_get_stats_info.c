
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_private {int dummy; } ;
struct mwifiex_ds_get_stats {int dummy; } ;


 int HostCmd_ACT_GEN_GET ;
 int HostCmd_CMD_802_11_GET_LOG ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,struct mwifiex_ds_get_stats*,int) ;

int
mwifiex_get_stats_info(struct mwifiex_private *priv,
         struct mwifiex_ds_get_stats *log)
{
 return mwifiex_send_cmd(priv, HostCmd_CMD_802_11_GET_LOG,
    HostCmd_ACT_GEN_GET, 0, log, 1);
}
