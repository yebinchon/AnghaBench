
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mwifiex_private {int data_rate; int tx_htinfo; int tx_rate; scalar_t__ is_data_rate_auto; } ;


 int HostCmd_ACT_GEN_GET ;
 int HostCmd_CMD_802_11_TX_RATE_QUERY ;
 int mwifiex_index_to_data_rate (struct mwifiex_private*,int ,int ) ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,int *,int) ;

int mwifiex_drv_get_data_rate(struct mwifiex_private *priv, u32 *rate)
{
 int ret;

 ret = mwifiex_send_cmd(priv, HostCmd_CMD_802_11_TX_RATE_QUERY,
          HostCmd_ACT_GEN_GET, 0, ((void*)0), 1);

 if (!ret) {
  if (priv->is_data_rate_auto)
   *rate = mwifiex_index_to_data_rate(priv, priv->tx_rate,
          priv->tx_htinfo);
  else
   *rate = priv->data_rate;
 }

 return ret;
}
