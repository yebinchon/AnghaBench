
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpaa2_eth_priv {int num_channels; struct dpaa2_eth_channel** channel; } ;
struct dpaa2_eth_channel {int napi; } ;


 int netif_napi_del (int *) ;

__attribute__((used)) static void del_ch_napi(struct dpaa2_eth_priv *priv)
{
 int i;
 struct dpaa2_eth_channel *ch;

 for (i = 0; i < priv->num_channels; i++) {
  ch = priv->channel[i];
  netif_napi_del(&ch->napi);
 }
}
