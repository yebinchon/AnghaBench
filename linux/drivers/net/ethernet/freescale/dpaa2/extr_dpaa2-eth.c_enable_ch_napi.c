
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpaa2_eth_priv {int num_channels; struct dpaa2_eth_channel** channel; } ;
struct dpaa2_eth_channel {int napi; } ;


 int napi_enable (int *) ;

__attribute__((used)) static void enable_ch_napi(struct dpaa2_eth_priv *priv)
{
 struct dpaa2_eth_channel *ch;
 int i;

 for (i = 0; i < priv->num_channels; i++) {
  ch = priv->channel[i];
  napi_enable(&ch->napi);
 }
}
