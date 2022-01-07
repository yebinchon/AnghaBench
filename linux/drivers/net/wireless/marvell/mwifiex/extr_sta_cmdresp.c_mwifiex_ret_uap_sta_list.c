
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rssi; } ;
struct mwifiex_sta_node {TYPE_1__ stats; } ;
struct mwifiex_private {int dummy; } ;
struct mwifiex_ie_types_sta_info {int rssi; int mac; } ;
struct host_cmd_ds_sta_list {int sta_count; int tlv; } ;
struct TYPE_4__ {struct host_cmd_ds_sta_list sta_list; } ;
struct host_cmd_ds_command {TYPE_2__ params; } ;


 int le16_to_cpu (int ) ;
 struct mwifiex_sta_node* mwifiex_get_sta_entry (struct mwifiex_private*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int mwifiex_ret_uap_sta_list(struct mwifiex_private *priv,
        struct host_cmd_ds_command *resp)
{
 struct host_cmd_ds_sta_list *sta_list =
  &resp->params.sta_list;
 struct mwifiex_ie_types_sta_info *sta_info = (void *)&sta_list->tlv;
 int i;
 struct mwifiex_sta_node *sta_node;

 for (i = 0; i < (le16_to_cpu(sta_list->sta_count)); i++) {
  sta_node = mwifiex_get_sta_entry(priv, sta_info->mac);
  if (unlikely(!sta_node))
   continue;

  sta_node->stats.rssi = sta_info->rssi;
  sta_info++;
 }

 return 0;
}
