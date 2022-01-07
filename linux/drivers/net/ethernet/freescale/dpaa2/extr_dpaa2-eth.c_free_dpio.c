
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dpaa2_eth_priv {int num_channels; struct dpaa2_eth_channel** channel; TYPE_2__* net_dev; } ;
struct dpaa2_eth_channel {int nctx; int dpio; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int dpaa2_io_service_deregister (int ,int *,struct device*) ;
 int free_channel (struct dpaa2_eth_priv*,struct dpaa2_eth_channel*) ;

__attribute__((used)) static void free_dpio(struct dpaa2_eth_priv *priv)
{
 struct device *dev = priv->net_dev->dev.parent;
 struct dpaa2_eth_channel *ch;
 int i;


 for (i = 0; i < priv->num_channels; i++) {
  ch = priv->channel[i];
  dpaa2_io_service_deregister(ch->dpio, &ch->nctx, dev);
  free_channel(priv, ch);
 }
}
