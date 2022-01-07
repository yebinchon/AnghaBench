
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_private {int adapter; } ;
struct host_cmd_ds_command {scalar_t__ result; } ;


 int ERROR ;
 scalar_t__ HostCmd_RESULT_OK ;
 int mwifiex_dbg (int ,int ,char*) ;

__attribute__((used)) static int mwifiex_ret_cfg_data(struct mwifiex_private *priv,
    struct host_cmd_ds_command *resp)
{
 if (resp->result != HostCmd_RESULT_OK) {
  mwifiex_dbg(priv->adapter, ERROR, "Cal data cmd resp failed\n");
  return -1;
 }

 return 0;
}
