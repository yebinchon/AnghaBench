
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mwifiex_private {int dummy; } ;
struct host_cmd_ds_wakeup_reason {int wakeup_reason; } ;
struct TYPE_3__ {int wakeup_reason; } ;
struct TYPE_4__ {TYPE_1__ hs_wakeup_reason; } ;
struct host_cmd_ds_command {TYPE_2__ params; } ;



int mwifiex_ret_wakeup_reason(struct mwifiex_private *priv,
         struct host_cmd_ds_command *resp,
         struct host_cmd_ds_wakeup_reason *wakeup_reason)
{
 wakeup_reason->wakeup_reason =
  resp->params.hs_wakeup_reason.wakeup_reason;

 return 0;
}
