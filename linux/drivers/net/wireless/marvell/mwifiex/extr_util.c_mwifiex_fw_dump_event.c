
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_private {int dummy; } ;


 int HostCmd_ACT_GEN_SET ;
 int HostCmd_CMD_FW_DUMP_EVENT ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,int *,int) ;

void mwifiex_fw_dump_event(struct mwifiex_private *priv)
{
 mwifiex_send_cmd(priv, HostCmd_CMD_FW_DUMP_EVENT, HostCmd_ACT_GEN_SET,
    0, ((void*)0), 1);
}
