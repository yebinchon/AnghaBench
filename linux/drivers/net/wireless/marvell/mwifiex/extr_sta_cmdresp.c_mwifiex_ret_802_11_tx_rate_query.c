
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mwifiex_private {int tx_htinfo; int tx_rate; int data_rate; int is_data_rate_auto; } ;
struct TYPE_3__ {int ht_info; int tx_rate; } ;
struct TYPE_4__ {TYPE_1__ tx_rate; } ;
struct host_cmd_ds_command {TYPE_2__ params; } ;


 int mwifiex_index_to_data_rate (struct mwifiex_private*,int ,int ) ;

__attribute__((used)) static int mwifiex_ret_802_11_tx_rate_query(struct mwifiex_private *priv,
         struct host_cmd_ds_command *resp)
{
 priv->tx_rate = resp->params.tx_rate.tx_rate;
 priv->tx_htinfo = resp->params.tx_rate.ht_info;
 if (!priv->is_data_rate_auto)
  priv->data_rate =
   mwifiex_index_to_data_rate(priv, priv->tx_rate,
         priv->tx_htinfo);

 return 0;
}
