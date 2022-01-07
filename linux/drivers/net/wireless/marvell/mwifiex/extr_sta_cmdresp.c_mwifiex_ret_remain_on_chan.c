
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwifiex_private {int dummy; } ;
struct host_cmd_ds_remain_on_chan {int dummy; } ;
struct TYPE_2__ {struct host_cmd_ds_remain_on_chan roc_cfg; } ;
struct host_cmd_ds_command {TYPE_1__ params; } ;


 int memcpy (struct host_cmd_ds_remain_on_chan*,struct host_cmd_ds_remain_on_chan*,int) ;

__attribute__((used)) static int
mwifiex_ret_remain_on_chan(struct mwifiex_private *priv,
      struct host_cmd_ds_command *resp,
      struct host_cmd_ds_remain_on_chan *roc_cfg)
{
 struct host_cmd_ds_remain_on_chan *resp_cfg = &resp->params.roc_cfg;

 if (roc_cfg)
  memcpy(roc_cfg, resp_cfg, sizeof(*roc_cfg));

 return 0;
}
