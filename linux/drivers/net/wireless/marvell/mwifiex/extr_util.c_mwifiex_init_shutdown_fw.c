
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct mwifiex_private {int adapter; } ;


 int ERROR ;
 int HostCmd_ACT_GEN_SET ;
 int HostCmd_CMD_FUNC_INIT ;
 int HostCmd_CMD_FUNC_SHUTDOWN ;
 scalar_t__ MWIFIEX_FUNC_INIT ;
 scalar_t__ MWIFIEX_FUNC_SHUTDOWN ;
 int mwifiex_dbg (int ,int ,char*) ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,int *,int) ;

int mwifiex_init_shutdown_fw(struct mwifiex_private *priv,
        u32 func_init_shutdown)
{
 u16 cmd;

 if (func_init_shutdown == MWIFIEX_FUNC_INIT) {
  cmd = HostCmd_CMD_FUNC_INIT;
 } else if (func_init_shutdown == MWIFIEX_FUNC_SHUTDOWN) {
  cmd = HostCmd_CMD_FUNC_SHUTDOWN;
 } else {
  mwifiex_dbg(priv->adapter, ERROR,
       "unsupported parameter\n");
  return -1;
 }

 return mwifiex_send_cmd(priv, cmd, HostCmd_ACT_GEN_SET, 0, ((void*)0), 1);
}
