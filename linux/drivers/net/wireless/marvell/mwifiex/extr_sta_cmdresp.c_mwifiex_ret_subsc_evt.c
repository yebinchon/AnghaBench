
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwifiex_private {int adapter; } ;
struct host_cmd_ds_802_11_subsc_evt {int events; } ;
struct TYPE_2__ {struct host_cmd_ds_802_11_subsc_evt subsc_evt; } ;
struct host_cmd_ds_command {TYPE_1__ params; } ;


 int EVENT ;
 int le16_to_cpu (int ) ;
 int mwifiex_dbg (int ,int ,char*,int ) ;

__attribute__((used)) static int mwifiex_ret_subsc_evt(struct mwifiex_private *priv,
     struct host_cmd_ds_command *resp)
{
 struct host_cmd_ds_802_11_subsc_evt *cmd_sub_event =
  &resp->params.subsc_evt;



 mwifiex_dbg(priv->adapter, EVENT,
      "Bitmap of currently subscribed events: %16x\n",
      le16_to_cpu(cmd_sub_event->events));

 return 0;
}
