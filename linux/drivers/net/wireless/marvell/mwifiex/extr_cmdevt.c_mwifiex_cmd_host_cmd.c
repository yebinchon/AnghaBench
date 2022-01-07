
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_private {int adapter; } ;
struct mwifiex_ds_misc_cmd {int len; int cmd; } ;
struct host_cmd_ds_command {int dummy; } ;


 int CMD ;
 int memcpy (struct host_cmd_ds_command*,int ,int ) ;
 int mwifiex_dbg (int ,int ,char*,int ) ;

__attribute__((used)) static int mwifiex_cmd_host_cmd(struct mwifiex_private *priv,
    struct host_cmd_ds_command *cmd,
    struct mwifiex_ds_misc_cmd *pcmd_ptr)
{

 memcpy(cmd, pcmd_ptr->cmd, pcmd_ptr->len);
 mwifiex_dbg(priv->adapter, CMD,
      "cmd: host cmd size = %d\n", pcmd_ptr->len);
 return 0;
}
